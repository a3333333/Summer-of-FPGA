/*
  Pulse Generator
  
  by a33333

  MIT license
  FPGA Design Challenge
  
*/


#define HIGHTIME 2000
#define LOWTIME  2000

void setup() {

  //set all pins as output and transmit on bit D7
  DDRD  = DDRD | B11111111;
  PORTD = B00000000;

  //set all pins as input and receive on bit B0
  DDRB = DDRB | B00000000;
  PORTB = B11111111;

  //pinMode(LED_BUILTIN, OUTPUT);
 
  Serial.begin(115200);
  Serial.print("Start Program\n\n\n");
}

void loop() {
  // put your main code here, to run repeatedly:
  int counter = 0;

  while (1) {
    
    Serial.print("*************\n");
    if (counter % 2) {
      Serial.print("send High\n");
      PORTD = PORTD | B10000000;
      delay(HIGHTIME);
    } else {
      PORTD = PORTD & B01111111;
      Serial.print("send Low\n");
      delay(LOWTIME);
    }
            
    if (PINB & B00000001) {
      Serial.print("receive High\n");
    } else {
      Serial.print("receive Low\n");
    }

    counter++;

  }

}
