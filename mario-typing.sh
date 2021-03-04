#!/bin/bash
checkoriginal="/home/$USER/.dosbox/dosbox-0.74-3.conf"
checknew="/opt/Mario-Typing/dosbox-0.74-3.conf"

cmp --silent $checkoriginal $checknew || cp /opt/Mario-Typing/dosbox-0.74-3.conf /home/$USER/.dosbox/dosbox-0.74-3.conf

cd /opt/Mario-Typing/ && wine start MARIO.EXE && cd -
