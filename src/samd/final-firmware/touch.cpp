
#include "hw.h"
#include "Arduino.h"

int led_pins[6]={7,4,6,5,3,2};


void setclock(){
    uint8_t channel = PTC_GCLK_ID;
    uint8_t source_generator = 4;
    uint32_t new_clkctrl_config = (channel << GCLK_CLKCTRL_ID_Pos);  // from gclk.c
    new_clkctrl_config |= source_generator << GCLK_CLKCTRL_GEN_Pos;  // from gclk.c
    noInterrupts();
    *((uint8_t*)&GCLK->CLKCTRL.reg) = channel;
    uint32_t prev_gen_id = GCLK->CLKCTRL.bit.GEN;
    GCLK->CLKCTRL.bit.GEN = 0;
    GCLK->CLKCTRL.reg &= ~GCLK_CLKCTRL_CLKEN;
    while (GCLK->CLKCTRL.reg & GCLK_CLKCTRL_CLKEN) {
      /* Wait for clock to become disabled */
    }
    GCLK->CLKCTRL.bit.GEN = prev_gen_id;
    interrupts();
    GCLK->CLKCTRL.reg = new_clkctrl_config;
    *((uint8_t*)&GCLK->CLKCTRL.reg) = channel;
    GCLK->CLKCTRL.reg |= GCLK_CLKCTRL_CLKEN;  /* Enable the generic clock */
    PM->APBCMASK.reg |= PM_APBCMASK_PTC;
}



Touchcontrol::Touchcontrol(uint32_t _gap):gap(_gap){
  setclock();
    int pins[6]={29,30,31,28,27,26};
    for(int i=0;i<6;i++){
      
    
    
    
      adafruit_ptc_get_config_default(configs+i);
      int pin = pins[i];
      configs[i].pin = g_APinDescription[pin].ulPin;
      configs[i].yline = configs[i].pin-2;
      configs[i].oversample = OVERSAMPLE_16;
      configs[i].seriesres = RESISTOR_50K;
      configs[i].freqhop = FREQ_MODE_SPREAD;
      pinMode( pins[i], INPUT ); 
      adafruit_ptc_init(PTC, configs+i);
      
    }
     

    
  state=0;
  button=0;
  gapcounter=gap;
}

void Touchcontrol::tick(){
  switch(state){
    case 0:
      if(gapcounter==0){
        state=1;
        button=-1;
        
      }else {
        gapcounter-=1;
      }
      break;
    case 1:
      button+=1;
      if(button==6){
        gapcounter=gap;
        state=0;
      }else{
        state=2;
        adafruit_ptc_start_conversion(PTC, configs+button);
      }
          break;
    case 2:
      
      if(adafruit_ptc_is_conversion_finished(PTC)){
        state=1;
        int32_t val=adafruit_ptc_get_conversion_result(PTC);
        if(val!=-1){
          val=val/16;
          tcurval[button]=val;
          if(tcurval[button]<minval[button])minval[button]=tcurval[button]; 
          tcurval[button]-=minval[button];
          if(tcurval[button]>200-(buttons[button]?120:0)){
            if(0 && !buttons[button]){
              Serial.print("Button pressed:");
              Serial.println(button);
              Serial.print("Reading:");
              Serial.println(tcurval[button]);
            }
            if(!buttons[button]){
              buttons[button]=true;
              digitalWrite(20,LOW);
            }
          }else{
            if(0 && buttons[button]){
              Serial.print("Button released:");
              Serial.println(button);
              Serial.print("Reading:");
              Serial.println(tcurval[button]);
            }
            if(buttons[button]){
              buttons[button]=false;
              digitalWrite(20,LOW);
            }
          }
          for(int i=0;i<6;i++){
          if(buttons[i]){
            //digitalWrite(led_pins[i],HIGH);
          }else{
            //digitalWrite(led_pins[i],LOW);
          }
          }
        }
        
       
      }
      break;
    default:
      break;
      
  }
}


