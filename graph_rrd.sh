#!/usr/bin/env bash

rrdtool graph office-temp.png \
    --start `date -d 'yesterday' '+%s'` \
    --end -1 \
    --width 600 \
    --title 'XINZHONGGUAN Today' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    'AREA:temperature#0000FF:temperature' \
    'LINE2:humidity#FF0000:humidity' \

rrdtool graph office-temp-month.png \
    --start `date -d 'last month' '+%s'` \
    --end -1 \
    --width 600 \
    --title 'XINZHONGGUAN This Month' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    'AREA:temperature#0000FF:temperature' \
    'LINE2:humidity#FF0000:humidity' \


