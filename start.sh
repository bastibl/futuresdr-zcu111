#!/bin/bash

docker run -ti --rm -e DISPLAY=$DISPLAY --net="host" --privileged -v /dev/bus/usb:/dev/bus/usb -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/vivado/.Xauthority -v $HOME/src/rfsoc:/home/vivado/projects petalinux:2022.2 /bin/bash
