#!/bin/bash

PWD=`pwd`

docker run -i --rm -v $PWD:/bzt-configs blazemeter/taurus testit.yml

echo "Done"
