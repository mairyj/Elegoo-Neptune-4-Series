#!/bin/bash
#SD_PATH=~/gcode_files
#cat ${2} > /tmp/plrtmpA.$$
mkdir -p ~/gcode_files/plr
filepath=$(sed -n "s/.*filepath *= *'\([^']*\)'.*/\1/p" /home/mks/klipper_config/saved_variables.cfg)
filepath=$(printf "$filepath")
echo "$filepath"
#SD_PATH=$(dirname "$filepath")
last_file=$(sed -n "s/.*last_file *= *'\([^']*\)'.*/\1/p" /home/mks/klipper_config/saved_variables.cfg)
last_file=$(printf "$last_file")
echo "$last_file"
plr=$last_file
echo "plr=$plr" 
PLR_PATH=~/gcode_files/plr
#echo "$SD_PATH"
#SD_PATH=~/gcode_files
#cat ${SD_PATH}/${2} > /home/mks/plrtmpA.$$
cat "${filepath}" > /home/mks/plrtmpA.$$
cat /home/mks/plrtmpA.$$ | sed -e '1,/Z'${1}'/ d' | sed -ne '/ Z/,$ p' | grep -m 1 ' Z' | sed -ne 's/.* Z\([^ ]*\).*/SET_KINEMATIC_POSITION Z=\1/p' > ${PLR_PATH}/"${plr}"
#echo 'START_TEMPS' >> ${SD_PATH}/plr.gcode
echo 'M118 START_TEMPS...' >> ${PLR_PATH}/"${plr}"
cat /home/mks/plrtmpA.$$ | sed '/ Z'${1}'/q' | sed -ne '/\(M104\|M140\|M109\|M190\|M106\)/p' >> ${PLR_PATH}/"${plr}"
cat /home/mks/plrtmpA.$$ | sed -ne '/;End of Gcode/,$ p' | tr '\n' ' ' | sed -ne 's/ ;[^ ]* //gp' | sed -ne 's/\\\\n/;/gp' | tr ';' '\n' | grep material_bed_temperature | sed -ne 's/.* = /M140 S/p' | head -1 >> ${PLR_PATH}/"${plr}"
cat /home/mks/plrtmpA.$$ | sed -ne '/;End of Gcode/,$ p' | tr '\n' ' ' | sed -ne 's/ ;[^ ]* //gp' | sed -ne 's/\\\\n/;/gp' | tr ';' '\n' | grep material_print_temperature | sed -ne 's/.* = /M104 S/p' | head -1 >> ${PLR_PATH}/"${plr}"
cat /home/mks/plrtmpA.$$ | sed -ne '/;End of Gcode/,$ p' | tr '\n' ' ' | sed -ne 's/ ;[^ ]* //gp' | sed -ne 's/\\\\n/;/gp' | tr ';' '\n' | grep material_bed_temperature | sed -ne 's/.* = /M190 S/p' | head -1 >> ${PLR_PATH}/"${plr}"
cat /home/mks/plrtmpA.$$ | sed -ne '/;End of Gcode/,$ p' | tr '\n' ' ' | sed -ne 's/ ;[^ ]* //gp' | sed -ne 's/\\\\n/;/gp' | tr ';' '\n' | grep material_print_temperature | sed -ne 's/.* = /M109 S/p' | head -1 >> ${PLR_PATH}/"${plr}"
# cat /tmp/plrtmpA.$$ | sed -e '1,/ Z'${1}'[^0-9]*$/ d' | sed -e '/ Z/q' | tac | grep -m 1 ' E' | sed -ne 's/.* E\([^ ]*\)/G92 E\1/p' >> ${SD_PATH}/plr.gcode
#tac /tmp/plrtmpA.$$ | sed -e '/ Z'${1}'[^0-9]*$/q' | tac | tail -n+2 | sed -e '/ Z[0-9]/ q' | tac | sed -e '/ E[0-9]/ q' | sed -ne 's/.* E\([^ ]*\)/G92 E\1/p' >> ${SD_PATH}/plr.gcode
BG_EX=`tac /home/mks/plrtmpA.$$ | sed -e '/ Z'${1}'[^0-9]*$/q' | tac | tail -n+2 | sed -e '/ Z[0-9]/ q' | tac | sed -e '/ E[0-9]/ q' | sed -ne 's/.* E\([^ ]*\)/G92 E\1/p'`
# If we failed to match an extrusion command (allowing us to correctly set the E axis) prior to the matched layer height, then simply set the E axis to the first E value present in the resemued gcode.  This avoids extruding a huge blod on resume, and/or max extrusion errors.
if [ "${BG_EX}" = "" ]; then
 BG_EX=`tac /home/mks/plrtmpA.$$ | sed -e '/ Z'${1}'[^0-9]*$/q' | tac | tail -n+2 | sed -ne '/ Z/,$ p' | sed -e '/ E[0-9]/ q' | sed -ne 's/.* E\([^ ]*\)/G92 E\1/p'`
fi
M83=$(cat /home/mks/plrtmpA.$$ | sed '/ Z'${1}'/q' | sed -ne '/\(M83\)/p')
if [ -n "${M83}" ];then
 echo 'G92 E0' >> ${PLR_PATH}/"${plr}"
 echo ${M83} >> ${PLR_PATH}/"${plr}"
else
 echo ${BG_EX} >> ${PLR_PATH}/"${plr}"
fi
echo 'G91' >> ${PLR_PATH}/"${plr}"
echo 'G1 Z10' >> ${PLR_PATH}/"${plr}"
echo 'G90' >> ${PLR_PATH}/"${plr}"
echo 'G28 X Y' >> ${PLR_PATH}/"${plr}"
echo 'G91' >> ${PLR_PATH}/"${plr}"
echo 'G1 Z-5' >> ${PLR_PATH}/"${plr}"
echo 'G90' >> ${PLR_PATH}/"${plr}"
echo 'M106 S204' >> ${PLR_PATH}/"${plr}"
# cat /tmp/plrtmpA.$$ | sed -e '1,/Z'${1}'/ d' | sed -ne '/ Z/,$ p' >> ${SD_PATH}/plr.gcode
tac /home/mks/plrtmpA.$$ | sed -e '/ Z'${1}'[^0-9]*$/q' | tac | tail -n+2 | sed -ne '/ Z/,$ p' >> ${PLR_PATH}/"${plr}"
rm /home/mks/plrtmpA.$$
