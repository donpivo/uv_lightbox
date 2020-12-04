#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_MCP23017.h>
#include <Encoder.h>
#define LED1 7
#define LED2 8
//Display definitions
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET     -1
//IO-extender definitions
#define IOEXT_BTN0 8
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
Adafruit_MCP23017 ioExtender;
Encoder myEnc(3, 4);
long oldPosition;
bool lastBtnState;

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  Serial.begin(9600);
  ioExtender.begin();
  ioExtender.pinMode(IOEXT_BTN0, INPUT);
  ioExtender.pullUp(IOEXT_BTN0,HIGH); 
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { 
    Serial.println("Display not found.");
    exit(0);
  }
  Serial.print("Display started");
  display.clearDisplay();
  updateDisplay(0, "0:00:00");
  oldPosition = -myEnc.read()/4;
}

void loop() {
  long newPosition = -myEnc.read()/4;
  if(newPosition!=oldPosition)
  {
    updateDisplay(1, String(newPosition));
    if(newPosition>=0) 
    {
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, LOW);
    }
    else
    {
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, HIGH);
    }
    oldPosition=newPosition;
  }
  byte btnState=ioExtender.digitalRead(IOEXT_BTN0);
  if(btnState!=lastBtnState)
  {
    Serial.println(btnState);
    lastBtnState=btnState;
  }
}


void updateDisplay(byte line, String text)
{
  display.fillRect(0,line*22,127,line*22+22,SSD1306_BLACK);
  display.setTextSize(3);  
  display.setTextColor(SSD1306_WHITE); 
  display.setCursor(0, line*22);
  display.print(text);
  display.display();
}
