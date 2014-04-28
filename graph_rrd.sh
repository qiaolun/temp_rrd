#!/usr/bin/env bash

rrdtool graph office-temp.png \
    --start `date -d 'yesterday' '+%s'` \
    --end -1 \
    --width 507 \
    --height 187 \
    --title 'XINZHONGGUAN by day' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#00FF00:temperature' \
    GPRINT:temperature:LAST:" Current\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Maximum\:%2.2lf %s\n"  \
    'LINE2:humidity#0000FF:humidity   ' \
    GPRINT:humidity:LAST:" Current\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Maximum\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-temp-week.png \
    --start `date -d 'last week' '+%s'` \
    --end -1 \
    --width 507 \
    --height 187 \
    --title 'XINZHONGGUAN by week' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#00FF00:temperature' \
    GPRINT:temperature:LAST:" Current\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Maximum\:%2.2lf %s\n"  \
    'LINE2:humidity#0000FF:humidity   ' \
    GPRINT:humidity:LAST:" Current\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Maximum\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-temp-month.png \
    --start `date -d 'last month' '+%s'` \
    --end -1 \
    --width 507 \
    --height 187 \
    --title 'XINZHONGGUAN by month' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#00FF00:temperature' \
    GPRINT:temperature:LAST:" Current\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Maximum\:%2.2lf %s\n"  \
    'LINE2:humidity#0000FF:humidity   ' \
    GPRINT:humidity:LAST:" Current\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Average\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Maximum\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


