import utime
from machine import I2C, Pin
from ads1x15 import * # implement later
from ADS1115 import * # *

i2c = I2C(1, freq=400000, scl=Pin(5), sda=Pin(4)) # to be filled in

devices = i2c.scan()

for device in devices:
    print(device)
    
address = 0x48 # 1001000 | corresponds to slave address for ADDR = GND

def readConfig():
    i2c.writeto(address, bytearray([1]))
    result = i2c.readfrom(address, 2)
    return result[0]<<8 | result[1]

def readValue():
    i2c.writeto(address, bytearray([0]))
    result = i2c.readfrom(address, 2)
    config = readConfig()
    config & ~(7<<12) & ~(7<<9)
    
    config |= (4<<12) | (1<<9) | (1<<15) # choose Port A0 | for max resolution for 3V3 | conversion trigger 
    config = [int(config>>i & 0xff) for i in (8,0)]
    
    i2c.writeto(address, bytearray([1] + config))

print(bin(readConfig()))

# Folowing loop to be replaced with more controlled measure periode
# (i.e. sampling a finite set of values, then storing/ saving them)

while True:
    val = readValue()
    print("value = ", val, "; as Voltage = ", (3.3/26250)*val) # check for correctness of conversion
    utime.sleep(0.5)
    
    
    