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
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2, OUTPUT);

  digitalWrite(2, HIGH);
  ioExtender.begin();
  ioExtender.pinMode(IOEXT_BTN0, INPUT);
  ioExtender.pullUp(IOEXT_BTN0,HIGH); 
//  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { 
//    Serial.println("Display not found.");
//    exit(0);
//  }
  Serial.print("Display started");
//  display.clearDisplay();
//  display.display();
  //updateDisplay(0, "0:00:00");
  oldPosition = -myEnc.read()/4;
}

void loop() {
  // put your main code here, to run repeatedly:

}
