#!/bin/bash

echo 'WRITE AUTOSTART'
cat > ~/.config/lxsession/LXDE-pi/autostart << EOF
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@/bin/bash /home/pi/start.sh
EOF

echo 'wait 20s ..'
sleep 20

echo 'START VIDEO'
omxplayer -p -o hdmi --loop --no-osd -b video.mp4
