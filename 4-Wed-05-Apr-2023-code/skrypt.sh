#!/usr/bin/bash

if [[ "$1" == '--date' || "$1" == '-d' ]]; then
  now=$(date +'%m/%d/%Y %R')
  echo "$now"
elif [[ "$1" == '--logs' || "$1" == '-l' ]]; then
  n=100

  if [ -n "$2" ]
  then
    n=$2
  fi

  for i in $(seq 1 $n)
  do
    touch log${i}.txt
  done
elif [[ "$1" == '--help' || "$1" == '-h' ]]; then
  echo 'Lista parametrów skryptu:'
  echo '--help wyświetla pomoc (ta wiadomość)'
  echo '--date wyświetla obecną datę'
  echo '--logs n tworzy n plików o nazwie log{1..n}.txt (domyślnie 100)'
fi
