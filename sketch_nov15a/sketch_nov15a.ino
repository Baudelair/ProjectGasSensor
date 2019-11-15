// RN2483_temperature.ino - Simple LoRaWAN temperature sensor using Microchip RN2483 module
#include "SoftwareSerial.h"

SoftwareSerial lora(3, 4); // RX, TX

void sendCmd( char *cmd) {
  Serial.write( cmd );
  Serial.write("\n");
  lora.write(cmd);
  lora.write("\r\n");
  while (!lora.available() ) {
    delay(100);
  }
  while (lora.available())
    Serial.write(lora.read());
}

void waitForResponse() {
  while (!lora.available() ) {
    delay(100);
  }
  while (lora.available())
    Serial.write(lora.read());
}

char getHexHi( char ch ) {
  char nibble = ch >> 4;
  return (nibble > 9) ? nibble + 'A' - 10 : nibble + '0';
}
char getHexLo( char ch ) {
  char nibble = ch & 0x0f;
  return (nibble > 9) ? nibble + 'A' - 10 : nibble + '0';
}

void sendData( char *data) {
  Serial.write( "mac tx uncnf 1 " );
  lora.write( "mac tx uncnf 1 " );
  // Write data as hex characters
  char *ptr = data;
  int idiotCount = 50;
  while (*ptr && idiotCount ) {
    lora.write( getHexHi( *ptr ) );
    lora.write( getHexLo( *ptr ) );

    Serial.write( getHexHi( *ptr ) );
    Serial.write( getHexLo( *ptr ) );

    ptr++;
    idiotCount--;
  }
  lora.write("\r\n");
  Serial.write("\n");
  delay(5000);

  while (lora.available())
    Serial.write(lora.read());
}

void gasMesure(int R0){
  float sensor_volt;
  float RS_gas; // Get value of RS in a GAS
  float ratio; // Get ratio RS_GAS/RS_air
  
  int sensorValue = analogRead(A0);
  
  sensor_volt=(float)sensorValue/1024*5.0;
  RS_gas = (5.0-sensor_volt)/sensor_volt; // omit * RL

        /*-Replace the name "R0" with the value of R0 in the demo of First Test -*/
  ratio = RS_gas/R0;  // ratio = RS/R0
        /*-----------------------------------------------------------------------*/

  Serial.print("sensor_volt = ");
  Serial.println(sensor_volt);
  Serial.print("RS_ratio = ");
  Serial.println(RS_gas);
  Serial.print("Rs/R0 = ");
  Serial.println(ratio);

  Serial.print("\n\n");
   
}

void setup()
{
  Serial.begin(57600);
  lora.begin(57600);
  Serial.println("RN2483 Test");

  pinMode(5, OUTPUT);
  digitalWrite(5, HIGH);
  delay(50);
  digitalWrite(5, LOW);
  delay(50);
  digitalWrite(5, HIGH);
  delay(50);

  waitForResponse();

  sendCmd("sys factoryRESET");
  sendCmd("sys get hweui");
  sendCmd("mac get deveui");

  // For TTN
  sendCmd("mac set devaddr AABBCCDD");  // Set own address
  sendCmd("mac set appskey 2B7E151628AED2A6ABF7158809CF4F3C");
  sendCmd("mac set nwkskey 2B7E151628AED2A6ABF7158809CF4F3C");
  sendCmd("mac set adr off");
  sendCmd("mac set rx2 3 869525000");
  sendCmd("mac join abp");
  sendCmd("mac get status");
  sendCmd("mac get devaddr");
}

void loop() {

  float gasType = 9.8;  // Get the value of R0 via in H2
  
  gasMesure(gasType);
//  char msgBuf[40];
//  sprintf(msgBuf, "{\"temp\":%d.%01d}", (int)temperature, (int)(temperature * 10) % 10);
//  Serial.println(msgBuf);
//
//  sendData(msgBuf);
//  delay(5000);
//  while (lora.available())
//    Serial.write(lora.read());
//
//  delay(6000);
}
