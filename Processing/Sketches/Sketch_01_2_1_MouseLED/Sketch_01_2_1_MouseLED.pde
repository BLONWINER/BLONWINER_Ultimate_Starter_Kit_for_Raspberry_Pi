/*****************************************************
 * Filename    : Sketch_01_2_1_MouseLED
 * Description : Use the mouse to control the LED ON OFF
 * auther      : BLONWINER
 * modification: 2025/01/01
 *****************************************************/
import BLONWINER.processing.io.*;

int ledPin = 17;
boolean ledState = false;
void setup() {
  size(100, 100);
  GPIO.pinMode(ledPin, GPIO.OUTPUT);
  background(102);
}

void draw() {
  if (ledState) {
    GPIO.digitalWrite(ledPin, GPIO.HIGH);
    background(255,0,0);
  } else {
    GPIO.digitalWrite(ledPin, GPIO.LOW);
    background(102);
  } 
}

void mouseClicked() { //if the mouse Clicked
  ledState = !ledState;  //Change the led State
}