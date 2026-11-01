#!/usr/bin/env bash

shopt -s nocaseglob
shopt -s extglob
#set -x
mv -t . $HOME/*.@(3mf|dxf|fcstd|fcstd1|fpp|gcode|skp|stl|stp)
#set +x

