#!/usr/bin/env python
"""
================================================
ABElectronics IO Pi | Digital I/O Read and Write Demo

Requires python smbus to be installed
For Python 2 install with: sudo apt-get install python-smbus
For Python 3 install with: sudo apt-get install python3-smbus

run with: python demo_iopireadwrite.py
================================================

This example reads pin 1 of bus 1 on the IO Pi board and sets
pin 1 of bus 2 to match.
The internal pull-up resistors are enabled so the input pin
will read as 1 unless the pin is connected to ground.

Initialise the IOPi device using the default addresses, you will need to
change the addresses if you have changed the jumpers on the IO Pi
"""
from __future__ import absolute_import, division, print_function, \
                                                    unicode_literals
import time
import requests
try:
    from IOPi import IOPi
except ImportError:
    print("Failed to import IOPi from python system path")
    print("Importing from parent folder instead")
    try:
        import sys
        sys.path.append("..")
        from IOPi import IOPi
    except ImportError:
        raise ImportError(
            "Failed to import library from parent folder")


def main():
    """
    Main program function
    """

    # create two instances of the IoPi class called iobus1 and iobus2 and set
    # the default i2c addresses
    iobus1 = IOPi(0x20)  # bus 1 will be inputs
    iobus2 = IOPi(0x21)  # bus 2 will be outputs
    iobus3 = IOPi(0x22)  # bus 3 will be outputs
    # Each bus is divided up two 8 bit ports.  Port 0 controls pins 1 to 8,
    # Port 1 controls pins 9 to 16.
    # We will read the inputs on pin 1 of bus 1 so set port 0 to be inputs and
    # enable the internal pull-up resistors
    iobus1.set_port_direction(0, 0xFF)
    iobus1.set_port_pullups(0, 0xFF)
    # We will write to the output pin 1 on bus 2 so set port 0 to be outputs
    # and turn off the pins on port 0
    iobus2.set_port_direction(0, 0x00)
    iobus2.write_port(0, 0x00)
    iobus2.set_port_direction(1,0x00)
    iobus2.write_port(1,0x00)
    iobus3.set_port_direction(0, 0x00)
    iobus3.write_port(0, 0x00)
    iobus3.set_port_direction(1,0x00)
    iobus3.write_port(1,0x00)

    while True:
        for i in range(1,9):

            # read pin 1 on bus 1.  If pin 1 is high set the output on
            # bus 2 pin 1 to high, otherwise set it to low.
            # connect pin 1 on bus 1 to ground to see the output on
            # bus 2 pin 1 change state.
            if iobus1.read_pin(i) == 0:
                r = requests.get("http://192.168.1.33/Sub-Site/ledcontrol/workon/sendcodetopython.php?pin=" + str(i))
                code = r.text
                column = int(code.split('-')[0])
                row_code = code.split('-')[1]
                print("[+] CONFIG CODE: " + code)
                print("[+] COLUMN: " + str(column))
                column_code = ''.join(['0' if x==column else '1' for x in range(1,9)])
                row = code.split('-')[1]
                print("[+] COLUMN CODE: " + str(column_code))
                print("[+] ROW CODE: " + str(row_code))
                iobus2.write_port(1, 0xff)
                iobus2.write_port(0, int(column_code,2))
                iobus3.write_port(1, int(row_code[0:8], 2))
                iobus3.write_port(0, int(row_code[8:16], 2))
        #     print(1)
        #     iobus2.write_port(1, 0xff)
        #     col = ''
        #     for x in range(1,9):
        #         if (1 == x):
        #             col += '1'
        #         else:
        #             col += '0'
        #     print(col)
        #     # row = code.split('-')[1]
        #     iobus2.write_port(0, 0x00)
        #     iobus3.write_port(1, 0xff)
        #     iobus3.write_port(0, 0xff)
        # if iobus1.read_pin(2) == 0:
        #     print(2)
        #     iobus2.write_port(1, 0xff)
        #     iobus2.write_port(0, 0xfd)
        #     iobus3.write_port(1, 0x80)
        #     iobus3.write_port(0, 0xff)
        # wait 0.1 seconds before reading the pins again
          #time.sleep(0.0001)

if __name__ == "__main__":
    main()