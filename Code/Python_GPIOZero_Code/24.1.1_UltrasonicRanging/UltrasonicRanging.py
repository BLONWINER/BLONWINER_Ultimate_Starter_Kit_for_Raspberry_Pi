#!/usr/bin/env python3
########################################################################
# Filename    : UltrasonicRanging.py
# Description : Get distance via UltrasonicRanging sensor
# auther      : BLONWINER
# modification: 2025/01/01
########################################################################
from gpiozero import DistanceSensor
from time import sleep

trigPin = 23
echoPin = 24
sensor = DistanceSensor(echo=echoPin, trigger=trigPin ,max_distance=3)

def loop():
    while True:
        print('Distance: ', sensor.distance * 100,'cm')
        sleep(1)
        
if __name__ == '__main__':     # Program entrance
    print ('Program is starting...')
    try:
        loop()
    except KeyboardInterrupt:  # Press ctrl-c to end the program.
        sensor.close()
        print("Ending program")
