#!/usr/bin/env bash

##Setting functions:
function startliquidctl {
    #Initialize liquidctl service:
    sudo liquidctl initialize all --verbose &&

    #Set fan speed to 60% duty cycle:
    sudo liquidctl set fan1 speed 60 &&
    sudo liquidctl set fan2 speed 60 &&
    sudo liquidctl set fan3 speed 60 &&
    return
}

function nordtheme {
    sudo liquidctl set led1 color fixed 5E81AC --start-led 1 --maximum-leds 12 &&
    sudo liquidctl set led2 color fixed 8FBCBB --start-led 1 --maximum-leds 10 &&
    return
}

function draculatheme {
    sudo liquidctl set led1 color fixed bd93f9 --start-led 1 --maximum-leds 12 &&
    sudo liquidctl set led2 color fixed ff79c6 --start-led 1 --maximum-leds 10 &&
    return
}

function greentheme {
    sudo liquidctl set led1 color fixed 3FFF6E --start-led 1 --maximum-leds 12 &&
    sudo liquidctl set led2 color fixed ff3e87 --start-led 1 --maximum-leds 12 &&
    return
}

function rupeetheme {
    sudo liquidctl set led1 color color_pulse --speed medium 00ff00 00ff00 --start-led 1 --maximum-leds 4 &
    sudo liquidctl set led1 color color_pulse --speed medium 0000ff 0000ff --start-led 5 --maximum-leds 4 &
    sudo liquidctl set led1 color color_pulse --speed medium ff0000 ff0000 --start-led 9 --maximum-leds 4 &
    sudo liquidctl set led2 color color_pulse --speed medium ffd700 ffd700 --start-led 1 --maximum-leds 10 &
    return
}

function clearliquid {
    sudo liquidctl set led1 color off &&
    sudo liquidctl set led2 color off &&
    sudo liquidctl set led1 color clear &&
    sudo liquidctl set led2 color clear &&
    return
}

#Prompt user to start liquidctl:
echo "Start liquidctl?"
read liquid

(if [ $liquid = "yes" ]; then
    startliquidctl
elif [ $liquid = "no" ]; then
    exit 1
else
    echo "Error. Exiting now"
fi)

clearliquid

#Prompt user for which theme to use:
echo "Which theme should we use?"
echo "nord, dracula, rupees, or green"
read theme

if [ $theme = "nord" ]; then
    nordtheme
elif [ $theme = "dracula" ]; then
    draculatheme
elif [ $theme = "green" ]; then
    greentheme
else
    echo "Error. Exiting now"
fi

exit 0
