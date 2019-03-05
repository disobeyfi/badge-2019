#include "hw.h"
#include <Wire.h>
#include <Tone.h>


#define NVM_MEMORY ((volatile uint16_t *)0x000000)
#define APP_START 0x400


static inline bool nvmReady(void) {
        return NVMCTRL->INTFLAG.reg & NVMCTRL_INTFLAG_READY;
}

__attribute__ ((long_call, section (".ramfunc")))
static void selfdestruct() {
    __disable_irq();
    while (!nvmReady())
        ;
    NVMCTRL->STATUS.reg |= NVMCTRL_STATUS_MASK;
    NVMCTRL->ADDR.reg  = (uintptr_t)&NVM_MEMORY[APP_START / 4];
    NVMCTRL->CTRLA.reg = NVMCTRL_CTRLA_CMD_ER | NVMCTRL_CTRLA_CMDEX_KEY;
    while (!nvmReady())
        ;
    NVIC_SystemReset() ;
    while (true);
}

Touchcontrol *t;
LEDcontrol *l;
volatile uint8_t responsebuffer[2]={0};


void setup() {
  // put your setup code here, to run once:
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(16,OUTPUT);
  pinMode(20,OUTPUT);
  pinMode(23,INPUT_PULLUP);
  digitalWrite(20,LOW);
  digitalWrite(11,HIGH); //non-bl mode
  digitalWrite(12,HIGH); //start esp32
  Serial1.begin(115200);
  Serial.begin(115200);
  digitalWrite(10,0);
  digitalWrite(2,HIGH);
  digitalWrite(9,HIGH);
  digitalWrite(16,HIGH);
  uint8_t m=(analogRead(2)>>2);
  responsebuffer[1]=m;
  Wire.begin(0x30);
  Wire.onReceive(receiveEvent); // register event
  Wire.onRequest(requestEvent); // register event
    uint32_t mask=0\
        |PM_APBAMASK_WDT\
        |PM_APBAMASK_PAC0\
        |PM_APBAMASK_EIC;
    PM->APBAMASK.reg &= ~mask;
    mask= 0\
        |PM_APBBMASK_PAC1 \
        | PM_APBBMASK_DSU \
        | PM_APBBMASK_DMAC \
        | PM_APBBMASK_NVMCTRL;
    PM->APBBMASK.reg &= ~mask;
    mask=0\
       | PM_APBCMASK_PAC2 \
        | PM_APBCMASK_DAC \
        | PM_APBCMASK_AC \
        | PM_APBCMASK_SERCOM5 \
        | PM_APBCMASK_SERCOM4 \
        | PM_APBCMASK_SERCOM3 \
        | PM_APBCMASK_SERCOM2 \
        | PM_APBCMASK_EVSYS \
        | PM_APBCMASK_I2S;
    PM->APBCMASK.reg &= ~mask;
    mask= 0\
        | PM_AHBMASK_DSU \
        | PM_AHBMASK_DMAC;
    PM->AHBMASK.reg &= ~mask;
  t=new Touchcontrol(300);
  l=new LEDcontrol(10);
  l->alloff();
}


void requestEvent()
{
  
  digitalWrite(20,HIGH);
  Wire.write((char *)responsebuffer,2); // respond with message of 2 bytes
                       // as expected by master
  //responsebuffer[1]=analogRead(2); // read battery state after each i2c request
}

void receiveEvent(int howMany)
{
  if(Wire.available()){
    int command=Wire.read();
    if(command==0x01){
      uint8_t id=Wire.read();
      uint8_t r=Wire.read();
      uint8_t g=Wire.read();
      uint8_t b=Wire.read();
      l->setled(id,r,g,b);
    }else if(command==0x02){
      uint8_t value=Wire.read();
      l->setbl(value);
    }else if(command==0x03){
      uint8_t freq_h=Wire.read();
      uint8_t freq_l=Wire.read();
      uint8_t dur_h=Wire.read();
      uint8_t dur_l=Wire.read();
      uint16_t freq=(freq_h<<8)|(freq_l);
      uint16_t dur=(dur_h<<8)|(dur_l);
      l->setbuzz(freq,dur);
    }else if(command==0x04){
      l->alloff();
    }
  }
}


bool active=false;
auto starttime=millis();
auto meastime=millis();
void loop() {
  // put your main code here, to run repeatedly:
  if(!active){
    if(USB->DEVICE.FSMSTATUS.reg==2 && Serial.available()){
      auto c=Serial.read();
      if(c=='#'){
        while(!Serial.available()){
          //wait for second byte
        }
        auto c2=Serial.read();
        if(c2=='#'){
          digitalWrite(11,HIGH);
          //reset to normal mode
        }else if(c2=='&'){
            //self-destruct
            selfdestruct();
        }else{
          digitalWrite(11,LOW);
          //reset to bootloader mode
        }
        digitalWrite(12,LOW);//reset
      }else{
        //don't reset at all
      }
      starttime=millis();
      active=true;
        
      digitalWrite(3,HIGH);//light up LED
    }
    if(USB->DEVICE.FSMSTATUS.reg!=2 && millis()-starttime>10000)active=true;
    
  }else{
    if(millis()-starttime>600){
      digitalWrite(12,HIGH);//deassert reset
    }
    if(millis()-starttime>5000){
      digitalWrite(11,HIGH); //deassert BL
    }
  }
  if(Serial.available()){
    Serial1.write(Serial.read());
  }
  if(Serial1.available()){
    Serial.write(Serial1.read());
  }
  if(millis()-meastime>60000){
    uint8_t m=(analogRead(2)>>2);
    responsebuffer[1]=m;
    meastime=millis();
  }
  if(digitalRead(23)==LOW){
    digitalWrite(11,LOW);
    digitalWrite(12,LOW);
    delay(100);
    digitalWrite(12,HIGH);
    delay(800);
    digitalWrite(11,HIGH);
    
  }
  t->tick();
  for(int i=0;i<6;i++){
    if(t->buttons[i]){
      responsebuffer[0]|=(1<<i);
    }else{
      responsebuffer[0]&=~(1<<i);
    }
  }
  if(!(USB->DEVICE.FSMSTATUS.reg==1)){
    responsebuffer[0]|=(1<<6);
  }else{
    responsebuffer[0]&=~(1<<6);
  }
}

    
