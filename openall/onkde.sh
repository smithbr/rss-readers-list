#! /bin/bash

ack -o --perl '(?<=\()(http.*?)(?=\))' README.md | while read LINE; do kde-open $LINE; done
