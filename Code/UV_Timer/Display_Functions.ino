void updateDisplay() {
  display.clearDisplay();
  drawLightbox();  
  display.display();
  updateDisplayTime();
}


void drawLightbox() {
  display.fillRect(90,35,36,29,SSD1306_BLACK);
  display.drawRect(90,35,36,29,SSD1306_WHITE);
  display.fillRect(90,49,36,1,SSD1306_WHITE);
  if(lightMode!=2) drawUpperLeds();
  if(lightMode!=1) drawLowerLeds();
}


void drawUpperLeds() {
  for(int i; i<8; i++) {
    display.fillRect(4*i+93,37,2,2,SSD1306_WHITE);
  }
}


void drawLowerLeds() {
  for(int i; i<8; i++) {
    display.fillRect(4*i+93,60,2,2,SSD1306_WHITE);
  }
}


void updateDisplayTime() {
  unsigned long timeToDisplay;
  if(programMode==MODE_COUNTDOWN  || programMode==MODE_PAUSE || programMode==MODE_DOOROPEN_PAUSE) timeToDisplay = countdownTime;
  else timeToDisplay = exposureTime;
  display.fillRect(0,0,127,31,SSD1306_BLACK);
  display.setTextSize(4);   
  display.cp437(true);        
  display.setCursor(5, 0); 
  if(programMode==MODE_CHANGEMINS ) display.setTextColor(SSD1306_BLACK, SSD1306_WHITE); 
  else display.setTextColor(SSD1306_WHITE); 
  if(timeToDisplay/60 < 10) display.print("0");
  display.print(timeToDisplay/60);
  display.setTextColor(SSD1306_WHITE); 
  display.print(":");
  if(programMode==MODE_CHANGESECS ) display.setTextColor(SSD1306_BLACK, SSD1306_WHITE); 
  else display.setTextColor(SSD1306_WHITE); 
  if(timeToDisplay % 60 < 10) display.print("0");
  display.print(timeToDisplay % 60);
  display.fillRect(0,30,127,2,SSD1306_BLACK);
  display.display();
}


void displayMessage(String line1, String line2, String line3) {
  display.fillRect(0,30,89,34,SSD1306_BLACK);
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE); 
  display.setCursor(0, 35);
  display.print(line1);
  display.setCursor(0, 45);
  display.print(line2);
  display.setCursor(0, 55);
  display.print(line3);
  display.display();
}
