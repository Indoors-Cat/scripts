#!/bin/bash

###Initilization:
sudo liquidctl initialize all &
sleep 2

###Static fan speeds:
sudo liquidctl set fan1 speed 60 &
sudo liquidctl set fan2 speed 60 &
sudo liquidctl set fan3 speed 60 &

###Temperature based fan speeds:
##NOTE: This is based on a temperature probe and NOT CPU TEMP!!!
#sudo liquidctl set fan1 speed 45 0 50 500 60 800 70 1100 80 1500 &
#sudo liquidctl set fan2 speed 45 0 50 500 60 800 70 1100 80 1500 &
#sudo liquidctl set fan3 speed 45 0 50 500 60 800 70 1100 80 1500 &

###Legend of Zelda Rupee Colors:(Green, Blue, Red, Gold[LED Strip1])
#sudo liquidctl set led1 color color_pulse --speed medium 00ff00 00ff00 --start-led 1 --maximum-leds 4 &
#sudo liquidctl set led1 color color_pulse --speed medium 0000ff 0000ff --start-led 5 --maximum-leds 4 &
#sudo liquidctl set led1 color color_pulse --speed medium ff0000 ff0000 --start-led 9 --maximum-leds 4 &
#sudo liquidctl set led2 color color_pulse --speed medium ffd700 ffd700 --start-led 1 --maximum-leds 10 &

###Nord (Static?)
sudo liquidctl set led1 color fixed 5E81AC --start-led 1 --maximum-leds 12 &
sudo liquidctl set led2 color fixed 4C566A --start-led 1 --maximum-leds 10 &

###Blue & Purple pulse: (Fans & LED Strip colors inverted)
#sudo liquidctl set led1 color color_shift --speed medium 21BBB8 9c12f2 --start-led 1 --maximum-leds 48 &
#sudo liquidctl set led2 color color_shift --speed medium 9c12f2 21BBB8 --start-led 1 --maximum-leds 48 &
