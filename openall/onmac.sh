#! /bin/bash

ack -o --perl '(?<=\()(http.*?)(?=\))' README.md | while read LINE; do open $LINE; done
