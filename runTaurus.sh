#!/bin/bash
# script for OSX
# set X display if you want:  https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
# if xquart starts slow, delete: /opt/X11/var/run/font_cache.lock
# use XMing X11 display on windows

# if you correctly set XDisplay , and enable jmeter GUI in .yml,  then you will see both Jmeter
#  start on your local machine and also a browser pointing to the test report.

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

PWD=`pwd`

docker run -i --rm -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/bzt-configs blazemeter/taurus testit.yml

#docker run -i --rm -v $PWD:/bzt-configs blazemeter/taurus testit.yml

echo "Done"



