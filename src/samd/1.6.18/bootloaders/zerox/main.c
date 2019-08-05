/*
  Copyright (c) 2015 Arduino LLC.  All right reserved.
  Copyright (c) 2015 Atmel Corporation/Thibaut VIARD.  All right reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#include <stdio.h>
#include <sam.h>
#include "sam_ba_monitor.h"
#include "sam_ba_serial.h"
#include "board_definitions.h"
#include "board_driver_led.h"
#include "board_driver_i2c.h"
#include "sam_ba_usb.h"
#include "sam_ba_cdc.h"

extern uint32_t __sketch_vectors_ptr; // Exported value from linker script
extern void board_init(void);

volatile uint32_t* pulSketch_Start_Address;

uint32_t rxsize=0;
uint8_t rxbuf[65];
uint8_t txbuf[65];

static void jump_to_application(void) {

  /* Rebase the Stack Pointer */
  __set_MSP( (uint32_t)(__sketch_vectors_ptr) );

  /* Rebase the vector table base address */
  SCB->VTOR = ((uint32_t)(&__sketch_vectors_ptr) & SCB_VTOR_TBLOFF_Msk);

  /* Jump to application Reset Handler in the application */
  asm("bx %0"::"r"(*pulSketch_Start_Address));
}

static volatile bool main_b_cdc_enable = false;

#ifdef CONFIGURE_PMIC
static volatile bool jump_to_app = false;
#endif

/**
 * \brief Check the application startup condition
 *
 */
static void check_start_application(void)
{
//  LED_init();
//  LED_off();

  /*
   * Test sketch stack pointer @ &__sketch_vectors_ptr
   * Stay in SAM-BA if value @ (&__sketch_vectors_ptr) == 0xFFFFFFFF (Erased flash cell value)
   */
  if (__sketch_vectors_ptr == 0xFFFFFFFF)
  {
    /* Stay in bootloader */
    return;
  }

  /*
   * Load the sketch Reset Handler address
   * __sketch_vectors_ptr is exported from linker script and point on first 32b word of sketch vector table
   * First 32b word is sketch stack
   * Second 32b word is sketch entry point: Reset_Handler()
   */
  pulSketch_Start_Address = &__sketch_vectors_ptr ;
  pulSketch_Start_Address++ ;

  /*
   * Test vector table address of sketch @ &__sketch_vectors_ptr
   * Stay in SAM-BA if this function is not aligned enough, ie not valid
   */
  if ( ((uint32_t)(&__sketch_vectors_ptr) & ~SCB_VTOR_TBLOFF_Msk) != 0x00)
  {
    /* Stay in bootloader */
    return;
  }

#if defined(BOOT_DOUBLE_TAP_ADDRESS)
  #define DOUBLE_TAP_MAGIC 0x07738135
  if (PM->RCAUSE.bit.POR)
  {
    /* On power-on initialize double-tap */
    BOOT_DOUBLE_TAP_DATA = 0;
  }
  else
  {
    if (BOOT_DOUBLE_TAP_DATA == DOUBLE_TAP_MAGIC)
    {
      /* Second tap, stay in bootloader */
      BOOT_DOUBLE_TAP_DATA = 0;
      return;
    }

    /* First tap */
    BOOT_DOUBLE_TAP_DATA = DOUBLE_TAP_MAGIC;

    /* Wait 0.5sec to see if the user tap reset again.
     * The loop value is based on SAMD21 default 1MHz clock @ reset.
     */
    for (uint32_t i=0; i<125000; i++) /* 500ms */
      /* force compiler to not optimize this... */
      __asm__ __volatile__("");

    /* Timeout happened, continue boot... */
    BOOT_DOUBLE_TAP_DATA = 0;
  }
#endif

/*
#if defined(BOOT_LOAD_PIN)
  volatile PortGroup *boot_port = (volatile PortGroup *)(&(PORT->Group[BOOT_LOAD_PIN / 32]));
  volatile bool boot_en;

  // Enable the input mode in Boot GPIO Pin
  boot_port->DIRCLR.reg = BOOT_PIN_MASK;
  boot_port->PINCFG[BOOT_LOAD_PIN & 0x1F].reg = PORT_PINCFG_INEN | PORT_PINCFG_PULLEN;
  boot_port->OUTSET.reg = BOOT_PIN_MASK;
  // Read the BOOT_LOAD_PIN status
  boot_en = (boot_port->IN.reg) & BOOT_PIN_MASK;

  // Check the bootloader enable condition
  if (!boot_en)
  {
    // Stay in bootloader
    return;
  }
#endif
*/

//  LED_on();
#ifdef CONFIGURE_PMIC
  jump_to_app = true;
#else
  jump_to_application();
#endif

}

#if DEBUG_ENABLE
#	define DEBUG_PIN_HIGH 	port_pin_set_output_level(BOOT_LED, 1)
#	define DEBUG_PIN_LOW 	port_pin_set_output_level(BOOT_LED, 0)
#else
#	define DEBUG_PIN_HIGH 	do{}while(0)
#	define DEBUG_PIN_LOW 	do{}while(0)
#endif


void testinit(){
    
	/* Configure flash wait states */
	NVMCTRL->CTRLB.bit.RWS = 1;

	/* Set OSC8M prescalar to divide by 1 */
	SYSCTRL->OSC8M.bit.PRESC = 0;

	/* Configure OSC8M as source for GCLK_GEN0 */
	GCLK_GENCTRL_Type genctrl={0};
	uint32_t temp_genctrl;
	GCLK->GENCTRL.bit.ID = 0; /* GENERATOR_ID - GCLK_GEN_0 */
	while(GCLK->STATUS.reg & GCLK_STATUS_SYNCBUSY);
	temp_genctrl = GCLK->GENCTRL.reg;
	genctrl.bit.SRC = GCLK_GENCTRL_SRC_OSC8M_Val;
	genctrl.bit.GENEN = true;
	genctrl.bit.RUNSTDBY = false;
	GCLK->GENCTRL.reg = (genctrl.reg | temp_genctrl);
	while(GCLK->STATUS.reg & GCLK_STATUS_SYNCBUSY);

	SYSCTRL_DFLLCTRL_Type dfllctrl_conf = {0};
	SYSCTRL_DFLLVAL_Type dfllval_conf = {0};
	uint32_t coarse =( *((uint32_t *)(NVMCTRL_OTP4)
                    + (NVM_SW_CALIB_DFLL48M_COARSE_VAL / 32))
                    >> (NVM_SW_CALIB_DFLL48M_COARSE_VAL % 32))
                    & ((1 << 6) - 1);
	if (coarse == 0x3f) {
		coarse = 0x1f;
	}
	uint32_t fine =( *((uint32_t *)(NVMCTRL_OTP4)
                  + (NVM_SW_CALIB_DFLL48M_FINE_VAL / 32))
                  >> (NVM_SW_CALIB_DFLL48M_FINE_VAL % 32))
                  & ((1 << 10) - 1);
	if (fine == 0x3ff) {
		fine = 0x1ff;
	}
	dfllval_conf.bit.COARSE  = coarse;
	dfllval_conf.bit.FINE    = fine;
	dfllctrl_conf.bit.USBCRM = true;
	dfllctrl_conf.bit.BPLCKC = false;
	dfllctrl_conf.bit.QLDIS  = false;
	dfllctrl_conf.bit.CCDIS  = true;
	dfllctrl_conf.bit.ENABLE = true;

	SYSCTRL->DFLLCTRL.bit.ONDEMAND = false;
	while (!(SYSCTRL->PCLKSR.reg & SYSCTRL_PCLKSR_DFLLRDY));
	SYSCTRL->DFLLMUL.reg = 48000;
	SYSCTRL->DFLLVAL.reg = dfllval_conf.reg;
	SYSCTRL->DFLLCTRL.reg = dfllctrl_conf.reg;

	GCLK_CLKCTRL_Type clkctrl={0};
	uint16_t temp;
	GCLK->CLKCTRL.bit.ID = 0; /* GCLK_ID - DFLL48M Reference */
	temp = GCLK->CLKCTRL.reg;
	clkctrl.bit.CLKEN = true;
	clkctrl.bit.WRTLOCK = false;
	clkctrl.bit.GEN = GCLK_CLKCTRL_GEN_GCLK0_Val;
	GCLK->CLKCTRL.reg = (clkctrl.reg | temp);

	/* Configure DFLL48M as source for GCLK_GEN1 */
	GCLK->GENCTRL.bit.ID = 1; /* GENERATOR_ID - GCLK_GEN_1 */
	while(GCLK->STATUS.reg & GCLK_STATUS_SYNCBUSY);
	temp_genctrl = GCLK->GENCTRL.reg;
	genctrl.bit.SRC = GCLK_GENCTRL_SRC_DFLL48M_Val;
	genctrl.bit.GENEN = true;
	genctrl.bit.RUNSTDBY = false;
	GCLK->GENCTRL.reg = (genctrl.reg | temp_genctrl);
	while(GCLK->STATUS.reg & GCLK_STATUS_SYNCBUSY);




}
#define GPIO_ON(pin) (PORT->Group[0].OUTSET.reg = (1<<(pin)))
#define GPIO_OFF(pin) (PORT->Group[0].OUTCLR.reg = (1<<(pin)))


void init_GPIO(void){
    //pins PA12-13 and PA16-23 and PA27-28 (LEDS, ESP32 control pins)
  PORT->Group[0].DIRSET.reg = (1<<12)|(1<<13)|(1<<16)|(1<<17)|(1<<18)|
    (1<<19)|(1<<20)|(1<<21)|(1<<22)|(1<<23)|(1<<27)|(1<<28);
    
    GPIO_OFF(27);
    GPIO_OFF(28);
    
    
    GPIO_ON(12);
    GPIO_ON(16);
    GPIO_OFF(17);
    
    GPIO_OFF(18);
    GPIO_OFF(19);
    GPIO_OFF(20);
    GPIO_OFF(21);
    GPIO_OFF(22);
    GPIO_ON(23);
    
    
    
}

/**
 *  \brief SAMD21 SAM-BA Main loop.
 *  \return Unused (ANSI-C compatibility).
 */
int main(void)
{
#if SAM_BA_INTERFACE == SAM_BA_USBCDC_ONLY  ||  SAM_BA_INTERFACE == SAM_BA_BOTH_INTERFACES
  P_USB_CDC pCdc;
#endif
  DEBUG_PIN_HIGH;

  /* Jump in application if condition is satisfied */
  //check_start_application();

  /* We have determined we should stay in the monitor. */
  /* System initialization */
  testinit();
  init_GPIO();
  //board_init();
  __enable_irq();

#ifdef CONFIGURE_PMIC
  //configure_pmic();
  if (jump_to_app == true) {
  //  jump_to_application();
  }
#endif

//#if SAM_BA_INTERFACE == SAM_BA_UART_ONLY  ||  SAM_BA_INTERFACE == SAM_BA_BOTH_INTERFACES
  /* UART is enabled in all cases */
  serial_open();
//#endif

#if SAM_BA_INTERFACE == SAM_BA_USBCDC_ONLY  ||  SAM_BA_INTERFACE == SAM_BA_BOTH_INTERFACES
  pCdc = usb_init();
#endif

  DEBUG_PIN_LOW;

  /* Initialize LEDs */
  LED_init();
  LEDRX_init();
  LEDRX_off();
  LEDTX_init();
  LEDTX_off();

  /* Start the sys tick (1 ms) */
  SysTick_Config(10000);

  /* Wait for a complete enum on usb or a '#' char on serial line */
  while (1)
  {
#if SAM_BA_INTERFACE == SAM_BA_USBCDC_ONLY  ||  SAM_BA_INTERFACE == SAM_BA_BOTH_INTERFACES
    if (pCdc->IsConfigured(pCdc) != 0)
    {
      main_b_cdc_enable = true;
    }

    /* Check if a USB enumeration has succeeded and if comm port has been opened */
    if (main_b_cdc_enable && (pCdc->currentConnection)&0x01)
    {
       GPIO_ON(27); 
      GPIO_OFF(12);
      GPIO_ON(28); 
      
      //sam_ba_monitor_init(SAM_BA_INTERFACE_USBCDC);
      /* SAM-BA on USB loop */
      while( 1 )
      {
        if(!((pCdc->currentConnection)&0x01)){
            GPIO_ON(12);
            break;
        }
        if(serial_is_rx_ready()){
            rxbuf[rxsize]=serial_getc();
            rxsize++;
            if(rxsize==64||rxbuf[rxsize]=='\n'){
                GPIO_OFF(12);
                //cdc_write_buf(rxbuf,rxsize);
                rxsize=0;
            }
        }  
        //sam_ba_monitor_run();
      }
    }
#endif
/*
#if SAM_BA_INTERFACE == SAM_BA_UART_ONLY  ||  SAM_BA_INTERFACE == SAM_BA_BOTH_INTERFACES
    // Check if a '#' has been received 
    if (!main_b_cdc_enable && serial_sharp_received())
    {
      sam_ba_monitor_init(SAM_BA_INTERFACE_USART);
      // SAM-BA on Serial loop 
      while(1)
      {
        sam_ba_monitor_run();
      }
    }
#endif
*/
  }
}

void SysTick_Handler(void)
{
    
  //LED_pulse();
    //if (pCdc->IsConfigured(pCdc) != 0)
    {
        //cdc_putc('X');
    }
    
  //sam_ba_monitor_sys_tick();
}
