#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_MCP23017.h>
#include <Encoder.h>
#include <EEPROM.h>
//Arduino pin definitions
#define MCP_INTA 2
#define LED1 7
#define LED2 8
//Display definitions
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET     -1
//IO-extender definitions
#define MCP_INT_MIRROR true
#define MCP_INT_ODR false
#define MCP_BTN_PRESET1 8
#define MCP_BTN_STARTPAUSE 9
#define MCP_BTN_PRESET2 11
#define MCP_BTN_RESET 10
#define MCP_BTN_PRESET3 13
#define MCP_BTN_LIGHTMODE 12
#define RTC_INT 14
#define ROTSW_PUSH 15
//Define modes
#define MODE_IDLE 0
#define MODE_COUNTDOWN 1
#define MODE_PAUSE 2
#define MODE_CHANGEMINS 3
#define MODE_CHANGESECS 4
#define MODE_CHANGELIGHTMODE 5
#define MODE_HANDLEPRESET 6
#define MODE_DOOROPEN_IDLE 7
#define MODE_DOOROPEN_PAUSE 8


Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
Adafruit_MCP23017 ioExtender;
Encoder myEnc(3,4);

long oldPosition;
volatile bool updateTimer=false; //True if clock tick is received from RTC, and display hasn't been updated yet
int exposureTime;
int countdownTime; //Counts down 1 sec at every clock tick from RTC
byte lightMode;
byte programMode=MODE_IDLE; //Initial mode at bootup is MODE_IDLE
unsigned long lastBtnInterrupt = 0; //Used for debouncing button clicks


void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(MCP_INTA, INPUT_PULLUP);
  Serial.begin(9600);
  //IO-extender initialization
  ioExtender.begin();
  ioExtender.pinMode(MCP_BTN_PRESET1, INPUT);
  ioExtender.pullUp(MCP_BTN_PRESET1,HIGH); 
  ioExtender.pinMode(MCP_BTN_STARTPAUSE, INPUT);
  ioExtender.pullUp(MCP_BTN_STARTPAUSE,HIGH); 
  ioExtender.pinMode(MCP_BTN_PRESET2, INPUT);
  ioExtender.pullUp(MCP_BTN_PRESET2,HIGH); 
  ioExtender.pinMode(MCP_BTN_RESET, INPUT);
  ioExtender.pullUp(MCP_BTN_RESET,HIGH); 
  ioExtender.pinMode(MCP_BTN_PRESET3, INPUT);
  ioExtender.pullUp(MCP_BTN_PRESET3,HIGH); 
  ioExtender.pinMode(MCP_BTN_LIGHTMODE, INPUT);
  ioExtender.pullUp(MCP_BTN_LIGHTMODE,HIGH); 
  ioExtender.setupInterrupts(MCP_INT_MIRROR, MCP_INT_ODR, LOW);
  ioExtender.setupInterruptPin(MCP_BTN_PRESET1,CHANGE);
  ioExtender.setupInterruptPin(MCP_BTN_STARTPAUSE,CHANGE);
  ioExtender.setupInterruptPin(MCP_BTN_PRESET2,CHANGE);
  ioExtender.setupInterruptPin(MCP_BTN_RESET,CHANGE);
  ioExtender.setupInterruptPin(MCP_BTN_PRESET3,CHANGE);
  ioExtender.setupInterruptPin(MCP_BTN_LIGHTMODE,CHANGE);
  ioExtender.setupInterruptPin(RTC_INT,CHANGE);
  ioExtender.readGPIOAB();
  //Display initialization
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { 
    Serial.println("Display not found.");
    Serial.flush();
    abort();
  }
  display.clearDisplay();
  display.display();
  //Timer initialization
  Wire.begin();   //TWI Bus is formed  
  Wire.beginTransmission(0b1101000); //device address and STSRT command are queued
  Wire.write(0x0E); //Control Register Address is queued
  Wire.write(0x00); //Data for Control Register is queued
  Wire.endTransmission(); //queued information are transferred under ACK; STOP

  oldPosition = -myEnc.read()/4;
  attachInterrupt(digitalPinToInterrupt(MCP_INTA),interruptHandler,FALLING);
  updateDisplay();
}

void loop() {
  long newPosition = -myEnc.read()/4;
  if(newPosition!=oldPosition)
  {
    
    oldPosition=newPosition;
  }
}
