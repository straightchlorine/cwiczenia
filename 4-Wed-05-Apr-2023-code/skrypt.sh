#!/usr/bin/bash

if [[ "$1" == '--date' ]]; then
  now=$(date +'%m/%d/%Y %R')
  echo "$now"
elif [[ "$1" == '--logs' ]]; then
  for i in {1..100}
  do
    touch log${i}.txt
  done
fi
