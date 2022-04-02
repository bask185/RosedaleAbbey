#!/usr/bin/env python
import os
os.system("updateIO.py")
os.system("addDate.py")
print('BUILDING')
os.system('arduino-cli compile -b arduino:avr:nano -e')
exit