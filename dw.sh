#!/bin/sh

#check whether there is only one parameter passed
if [ "$#" -ne 1 ]
then
  echo "Illegal number of parameters"
else 
  #otherwise, download the mp3
  youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg --output "%(title)s.%(ext).s" $1
  # uncomment the next line if you want underscores to be replaced
  # with whitespaces
  #for f in *.mp3; do mv "$f" "${f//_/ }"; done
fi
