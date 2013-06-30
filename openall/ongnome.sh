#! /bin/bash

ack -o --perl '(?<=\()(http.*?)(?=\))' README.md | while read LINE; do gnome-open $LINE; done
