#!/usr/bin/env python

import sys, os, traceback, datetime
import serial, rrdtool

RRD_DB = 'office-temp.rrd';
RRD_PM1_DB = 'office-pm1.rrd';
RRD_PM2_DB = 'office-pm2.rrd';

ser = serial.Serial('/dev/ttyACM0', 115200)

def save_to_rrd(dat) :
    (temp, hum) = dat

    rrdtool.updatev(RRD_DB,'N:%d:%d' % (temp, hum))

def save_to_pm1_rrd(dat) :
    rrdtool.updatev(RRD_PM1_DB,'N:%d' % (dat))

def save_to_pm2_rrd(dat) :
    rrdtool.updatev(RRD_PM2_DB,'N:%d' % (dat))



def check_temp() :

    line = ser.readline()
    if line.startswith('data,') :
        (_ignore, t, h) = line.strip().split(',')
        t = int(float(t))
        h = int(float(h))
        print '%s, temperature %d, humidity %d' % (datetime.datetime.now(), t, h)

        save_to_rrd((t, h))  

    elif line.startswith('pmdata,') :
        (_ignore, md, lpc, rt, cont) = line.strip().split(',')
        dat = int(float(cont))
        print '%s, pm %s, %d' % (datetime.datetime.now(), md, dat)

        if dat > 2 :
            if md == '8' :
                save_to_pm2_rrd(dat)  
            elif md == '9' :
                save_to_pm1_rrd(dat)  
            else :
                print 'invalid mode %s' % (md,)


while True:
    
    try :
        check_temp()
    except KeyboardInterrupt:
        print "Ctrl-c pressed ..."
        break
    except :
       print >> sys.stderr, 'check_error / ', traceback.print_exc()

