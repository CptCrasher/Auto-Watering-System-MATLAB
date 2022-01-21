
# Automated Plant Watering System

The Automated Plant Watering System is a minor project created in MATLAB for 
a first year Engineering Course.

### About the project
Utilizing the 'MATLAB Support Package for Arduino Hardware', both digital
and analog voltage signals can be sent to specifc input pins of an Arduino board.

Being able to turn pins on and off in MATLAB allows for the implementation
of MATLAB's math based functionalites in Arduino systems that would typically
be created in the Arduino IDE.

### How it Works
#### The components used in this project are as follows:
* `An Arduino UNO board`
* `Push Button x1`
* `A MOSFET`
* `Water Pump w/ Tubing`
* `Soil Moisture Sensor`

The pump would be placed in a container of water & the mositure sensor
inserted into the soil of the plant. 


When the program is started, the mositure sensor always reads a voltage value
(Lower voltage = More moisture). Once this voltage level reaches a certain amount (2.6V),
power is sent to the MOSFET to then power the water pump for ~2 seconds. This increases
the moisture of the plant lowering the voltage being read by the moisture sensor. If the button is pressed, 
it stops the program. 
### Flow Chart

![Flow Chart](https://i.imgur.com/HW8iX97.png)
