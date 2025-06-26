/*****************************************************
 * Filename    : Sketch_15_1_1_SenseLED
 * Description : Control the led by Infare motion sensor
 * auther      : BLONWINER
 * modification: 2025/01/01
 *****************************************************/
import BLONWINER.processing.io.*;

final int sensorPin = 17;  //connect to sensor pin
final int ledPin = 18;    //connect to led pin
void setup() {
  size(640,360);    //window size
  GPIO.pinMode(sensorPin, GPIO.INPUT); 
  GPIO.pinMode(ledPin, GPIO.OUTPUT);
}

void draw() {
  background(102);
  titleAndSiteInfo();
  //if read sensor for high level
  if (GPIO.digitalRead(sensorPin) == GPIO.HIGH) {
    GPIO.digitalWrite(ledPin, GPIO.HIGH);  //led on
    fill(64,255,64);    //fill in green
  } else {
    GPIO.digitalWrite(ledPin, GPIO.LOW);  //led off
    fill(255);        //fill in white
  }
  ellipse(width/2,height/2,height/2,height/2);
}

void titleAndSiteInfo() {
  fill(0);
  textAlign(CENTER);    //set the text centered
  textSize(40);        //set text size
  text("SENSE LED", width / 2, 40);    //title
  textSize(16);
  text("BLONWINER", width / 2, height - 20);    //site
}