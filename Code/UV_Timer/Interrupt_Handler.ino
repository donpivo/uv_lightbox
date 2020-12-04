void interruptHandler() 
{
  noInterrupts();
  detachInterrupt(digitalPinToInterrupt(MCP_INTA));
  interrupts(); 
  uint8_t ioPin=ioExtender.getLastInterruptPin();
  uint8_t pinVal=ioExtender.getLastInterruptPinValue();
  //Handle clock tick from RTC
  if(ioPin==RTC_INT) 
  {
    digitalWrite(LED1, pinVal);
    updateTimer=true;
  }
  //Handle button click if it's been >0.5 sec since last click (debounce)
  else if((millis()-lastBtnInterrupt>=500)&&!pinVal)
  {
    if(ioPin==MCP_BTN_PRESET1)
    {
      Serial.println("Preset1");
    }
    else if(ioPin==MCP_BTN_STARTPAUSE)
    {
      Serial.println("Start/pause");
    }
    else if(ioPin==MCP_BTN_PRESET2)
    {
      Serial.println("Preset2");
    }
    else if(ioPin==MCP_BTN_RESET)
    {
      Serial.println("Reset");
    }
    else if(ioPin==MCP_BTN_PRESET3)
    {
      Serial.println("Preset3");
    }
    else if(ioPin==MCP_BTN_LIGHTMODE)
    {
      Serial.println("LightMode");
    }
    lastBtnInterrupt=millis();
  }
  

  attachInterrupt(digitalPinToInterrupt(MCP_INTA),interruptHandler,FALLING);
}
