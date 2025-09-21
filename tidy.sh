#!/usr/bin/env bash

#mkdir globbing
#cd globbing
#mkdir -p folder/{sub,another}folder/content/deepfolder/
#macy stacy tracy "file with space" folder/{sub,another}folder/content/deepfolder/file .hiddenfile

#shopt -u nullglob
#shopt -u failglob
#shopt -u dotglob
#shopt -u nocaseglob
#shopt -u extglob
#shopt -u globstar

#shopt -s nullglob
#shopt -s failglob
#shopt -s dotglob
shopt -s nocaseglob
shopt -s extglob
#shopt -s globstar

# rename 's/CE3PRO_//' **/*

#set -x

mkdir "${1:?}" || exit
mv -t "${1:?}" *"${1:?}"*.@(3mf|dxf|fcstd|fcstd1|fpp|gcode|skp|stl|stp|png)

#set +x

