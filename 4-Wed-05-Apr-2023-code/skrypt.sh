#!/usr/bin/bash

if [[ "$1" == "--date" ]]; then
  now=$(date +'%m/%d/%Y %R')
  echo "$now"
fi
