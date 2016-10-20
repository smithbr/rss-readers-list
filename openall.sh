#!/bin/bash
if [ "`ps -e | grep gdm`" ]; then
  ack -o --perl '(?<=()(http.*?)(?=))' README.md | while read LINE; do gnome-open $LINE; done
elif [ "`ps -e | grep kdm`" ]; then
  ack -o --perl '(?<=()(http.*?)(?=))' README.md | while read LINE; do kde-open $LINE; done
elif [ "$(uname)" == "Darwin" ]; then
  ack -o --perl '(?<=()(http.*?)(?=))' README.md | while read LINE; do open $LINE; done
else
  exit 0
fi
