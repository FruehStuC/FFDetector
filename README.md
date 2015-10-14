# FFDetector
Einfaches FreiFunk Detector mit ESP8266 und lua

Proof of concept project. The WS2812 changes color when Freifunk is near. I'm underway with my bicycle a lot, and it's neat to see if there's Community WiFi when considering stopping for a coffee ;)

I used the NodeMCU Firmware on an ESP8266-01 evaluation board.

The LED Output is a WS2812, works fine at 3.3v

The ESP8266 board that I used needed a jumper wire from the ESP8266 XPD_DCDC pin(8) to the Reset pin so that the deep sleep mode works. This lets the board wake every ten seconds or so and do its stuff. In sleep mode the board takes about 80 microamps, woken it takes around 100 milliamps. I removed the power rail LED on the eval board.
