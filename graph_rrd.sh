#!/usr/bin/env bash

### temperature ###
rrdtool graph office-temp.png \
    --start `date -d 'yesterday' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by day' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#54EC48:temperature' \
    GPRINT:temperature:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:temperature:MIN:"Min\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Max\:%2.2lf %s\n"  \
    'LINE2:humidity#48C4EC:humidity   ' \
    GPRINT:humidity:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:humidity:MIN:"Min\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-temp-week.png \
    --start `date -d 'last week' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by week' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#54EC48:temperature' \
    GPRINT:temperature:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:temperature:MIN:"Min\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Max\:%2.2lf %s\n"  \
    'LINE2:humidity#48C4EC:humidity   ' \
    GPRINT:humidity:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:humidity:MIN:"Min\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-temp-month.png \
    --start `date -d 'last month' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by month' \
    'DEF:temperature=office-temp.rrd:temperature:AVERAGE' \
    'DEF:humidity=office-temp.rrd:humidity:AVERAGE' \
    COMMENT:" \n" \
    'AREA:temperature#54EC48:temperature' \
    GPRINT:temperature:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:temperature:MIN:"Min\:%2.2lf %s"  \
    GPRINT:temperature:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:temperature:MAX:"Max\:%2.2lf %s\n"  \
    'LINE2:humidity#48C4EC:humidity   ' \
    GPRINT:humidity:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:humidity:MIN:"Min\:%2.2lf %s"  \
    GPRINT:humidity:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:humidity:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


### pm ###

rrdtool graph office-pm.png \
    --start `date -d 'yesterday' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by day' \
    'DEF:pm1=office-pm1.rrd:pm:AVERAGE' \
    'DEF:pm2=office-pm2.rrd:pm:AVERAGE' \
    COMMENT:" \n" \
    'AREA:pm1#a6c96a:Concentration, 1.0um' \
    GPRINT:pm1:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm1:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm1:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm1:MAX:"Max\:%2.2lf %s\n"  \
    'AREA:pm2#1aadce:Concentration, 2.5um' \
    GPRINT:pm2:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm2:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm2:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm2:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-pm-week.png \
    --start `date -d 'last week' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by week' \
    'DEF:pm1=office-pm1.rrd:pm:AVERAGE' \
    'DEF:pm2=office-pm2.rrd:pm:AVERAGE' \
    COMMENT:" \n" \
    'AREA:pm1#a6c96a:Concentration, 1.0um' \
    GPRINT:pm1:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm1:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm1:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm1:MAX:"Max\:%2.2lf %s\n"  \
    'AREA:pm2#1aadce:Concentration, 2.5um' \
    GPRINT:pm2:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm2:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm2:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm2:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \


rrdtool graph office-pm-month.png \
    --start `date -d 'last month' '+%s'` \
    --end -1 \
    --width 571 \
    --height 187 \
    --title 'XINZHONGGUAN by month' \
    'DEF:pm1=office-pm1.rrd:pm:AVERAGE' \
    'DEF:pm2=office-pm2.rrd:pm:AVERAGE' \
    COMMENT:" \n" \
    'AREA:pm1#a6c96a:Concentration, 1.0um' \
    GPRINT:pm1:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm1:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm1:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm1:MAX:"Max\:%2.2lf %s\n"  \
    'AREA:pm2#1aadce:Concentration, 2.5um' \
    GPRINT:pm2:LAST:" Cur\:%2.2lf %s"  \
    GPRINT:pm2:MIN:"Min\:%2.2lf %s"  \
    GPRINT:pm2:AVERAGE:"Avg\:%2.2lf %s"  \
    GPRINT:pm2:MAX:"Max\:%2.2lf %s\n"  \
    COMMENT:" \n" \
    COMMENT:"LAST UPDATED \:$(date '+%Y-%m-%d %H\:%M')\n" -Y \

