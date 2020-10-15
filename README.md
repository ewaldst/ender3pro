# ender3pro
This is a collection of my upgrades to my Creality Ender 3 Pro

## cameraadapter
An adapter to mount a camera next to the printers display with a GoPro-style mount.

I have mounted a Raspberry Pi HQ Camera using the tripod socket

## daughterboard
A small board to be fitted on the Raspberry Pi's IO-Pins with the following features:

* Power supply for the RaspberryPi
* Power supply for up to 3 fans with separate DC-DC converter of choice
* PWM fan control for 3 fans (CASE1 + CASE2 are combined)
* Serial connection
* 1 3V3 digital input
* 1 DS18B20 sensor onboard
* 2 plugs for 2 more 1-wire sensors

## feet
Feet that I use for enough clearance on the bottom in combination with the raspi-case from this repo

foot.stl should be printed using PLA or any other rigid material
shoe.stl should be printed using TPU or any other flexible material

For mounting I used 2 M4x10 T-nuts and 2 M4x16 bolts for every foot

## hotendfan
Fan control script with systemd unit to run on the Raspberry Pi

## raspi-case
Rear mounted case for a SKR 1.4 (Turbo) mainboard, a 40x40 fan and a Raspberry Pi in combination with the 3DFused Y-axis linear rail kit. The case is inspired by the case from TeachingTech (thing:3688967)

The case consists of 4 parts to be easily printed on almost any 3D printer.

For the connection between the two bottom parts I used M3x20 bots and for the lid M3x4
