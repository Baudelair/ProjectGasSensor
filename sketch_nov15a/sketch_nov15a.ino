// RN2483_temperature.ino - Simple LoRaWAN temperature sensor using Microchip RN2483 module
#include "SoftwareSerial.h"
#include "gasCom.h"
#include <TheThingsNetwork.h>



SoftwareSerial loraSerial(10,11);
#define debugSerial Serial
#define freqPlan TTN_FP_EU868
float R0;

TheThingsNetwork ttn(loraSerial, debugSerial, freqPlan );

void  convertToByteArrays(int value, unsigned char* arrayByte){
  union {
    int a;
    unsigned char bytes[2];
  } thing;
  thing.a = value;
  memcpy(arrayByte,thing.bytes,2);
  
}

void setup()
{
  debugSerial.begin(57600);
  loraSerial.begin(57600);
  debugSerial.println("RN2483 Test");
const char *devAddr = "2601160F";
const char *nwkSKey = "5E7DE6B986D2206F86B95ECDCBCF8AF4";
const char *appSKey = "1286128B17C38E88E4F86CC7C19586A7";
ttn.personalize(devAddr, nwkSKey, appSKey);
 R0 = gasCalibration();  
}

void loop() {
  float ratio = gasMesure(R0);
  Serial.println(ratio);
  int ratioInt = floor(ratio);
  Serial.println(ratioInt);
  unsigned char ratioB[2];
  convertToByteArrays(ratioInt, ratioB);
  ttn.sendBytes(ratioB, sizeof(ratioB));
  
  delay(7000);
  //ttn.sendBytes(ratio, sizeof(ratio));
   

}
