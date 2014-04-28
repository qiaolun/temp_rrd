#!/usr/bin/env python

import sys, os, traceback, datetime
import serial, rrdtool

RRD_DB = 'office-temp.rrd';

ser = serial.Serial('/dev/ttyACM0', 115200)

def save_to_rrd(dat) :
    (temp, hum) = dat

    rrdtool.updatev(RRD_DB,'N:%d:%d' % (temp, hum))



def check_temp() :

    line = ser.readline()
    if line.startswith('data,') :
        (_ignore, t, h) = line.strip().split(',')
        t = int(float(t))
        h = int(float(h))
        print '%s, temperature %d, humidity %d' % (datetime.datetime.now(), t, h)

        save_to_rrd((t, h))  

while True:
    
    try :
        check_temp()
    except KeyboardInterrupt:
        print "Ctrl-c pressed ..."
        break
    except :
       print >> sys.stderr, 'check_error / ', traceback.print_exc()

