#!/bin/bash
# script for OSX

# requires Apache setup like so: https://medium.com/@JohnFoderaro/how-to-set-up-apache-in-macos-sierra-10-12-bca5a5dfffba

# set X display if you want:  https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
# if xquart starts slow, delete: /opt/X11/var/run/font_cache.lock
# use XMing X11 display on windows

# if you correctly set XDisplay , and enable jmeter GUI in .yml,  then you will see both Jmeter
#  start on your local machine and also a browser pointing to the test report.
# once jmeter GUI starts up, you have to execute the RUN button manually

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

PWD=`pwd`

docker run -it --rm -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/bzt-configs -v $PWD/artifacts:/artifacts blazemeter/taurus testit.yml

#docker run -it --rm -v $PWD:/bzt-configs -v $PWD/artifacts:/artifacts blazemeter/taurus testit.yml

echo "Done"



