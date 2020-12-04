void savePresetToEEPROM(byte presetID) {
  EEPROM.write(presetID*3,highByte(exposureTime));
  EEPROM.write(1+presetID*3,lowByte(exposureTime));
  EEPROM.write(2+presetID*3,lightMode);
}


void readPresetFromEEPROM(byte presetID) {
  exposureTime=256*EEPROM.read(presetID*3)+EEPROM.read(1+presetID*3);
  lightMode=EEPROM.read(2+presetID*3);
}
