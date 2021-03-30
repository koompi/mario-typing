#!/bin/bash
checkoriginal="/home/$USER/.dosbox/dosbox-0.74-3.conf"
checknew="/opt/Mario-Typing/dosbox-0.74-3.conf"
check=$(echo $(cmp /home/$USER/.dosbox/dosbox-0.74-3.conf /opt/Mario-Typing/dosbox-0.74-3.conf))

if [[ ! -z "$check" ]];
then
    cp /opt/Mario-Typing/dosbox-0.74-3.conf /home/$USER/.dosbox/dosbox-0.74-3.conf
fi

cd /opt/Mario-Typing/ && wine MARIO.EXE && cd - && qdbus org.kde.ksmserver /KSMServer logout 0 0 0
