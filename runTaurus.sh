#!/bin/bash
# set X display if you want:  https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
# if xquart starts slow, delete: /opt/X11/var/run/font_cache.lock

PWD=`pwd`

#docker run -i --rm -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/bzt-configs blazemeter/taurus testit.yml

docker run -i --rm -v $PWD:/bzt-configs blazemeter/taurus testit.yml

echo "Done"
