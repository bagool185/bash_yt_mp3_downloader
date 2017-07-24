#!/bin/sh

#check whether there is only one parameter passed
if [ "$#" -ne 1 ]
then
  echo "Illegal number of parameters"
else 
  #otherwise, download the mp3
  youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg $1
fi
