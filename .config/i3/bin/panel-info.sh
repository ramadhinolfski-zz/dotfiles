#!/bin/sh
ScreenWidth=1338
fg="#efefef"
bg="#343C48"
hg="25"
icons2="System San Francisco:size=12"
icons4="System San Francisco:size=10"
bg_volume="#BA5E57"
font='System San Francisco-9'
WidthInfo=`expr $ScreenWidth / 2 - 100`
WidthVolume=100
X_info=`expr $ScreenWidth - $WidthInfo - $WidthVolume`
X_volume=`expr $ScreenWidth - $WidthVolume`

conky -c ~/.config/i3/bin/conky/info | dzen2 -p -ta r -e 'button3=' -fn 'System San Francisco-9' -fg $fg -bg $bg -h $hg -w $WidthInfo -x $X_info &
conky -c ~/.config/i3/bin/conky/info2 | dzen2 -p -ta r -e 'button3=' -fn 'System San Francisco-9' -fg $fg -bg $bg_volume -h $hg -w $WidthVolume -x $X_volume &

