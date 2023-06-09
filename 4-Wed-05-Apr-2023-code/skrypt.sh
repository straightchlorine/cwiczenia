#!/usr/bin/bash

now=$(date +'%m/%d/%Y %R')

if [[ "$1" == '--date' || "$1" == '-d' ]]; then
  echo "$now"
elif [[ "$1" == '--logs' || "$1" == '-l' ]]; then
  n=100
  if [ -n "$2" ]
  then
    n=$2
  fi

  for i in $(seq 1 $n)
  do
    echo log${i}.txt >> log${i}.txt
    echo $0 >> log${i}.txt
    echo $now >> log${i}.txt 
  done
elif [[ "$1" == '--help' || "$1" == '-h' ]]; then
  echo 'Lista parametrów skryptu:'
  echo '--help (-h) wyświetla pomoc (ta wiadomość)'
  echo '--date (-d) wyświetla obecną datę'
  echo '--logs n (-l) tworzy n plików o nazwie log{1..n}.txt (domyślnie 100)'
  echo '--error n (-e) tworzy n plików o nazwie log{1..n}.txt (domyślnie 100)'
elif [[ "$1" == '--init' ]]; then
  git clone git@github.com:straightchlorine/cwiczenia.git
  dir=$(pwd)/cwiczenia
  export PATH=$dir:$PATH
elif [[ "$1" == '--error' || "$1" == '-e' ]]; then
  n=100
  if [ -n "$2" ]
  then
    n=$2
  fi

  for i in $(seq 1 $n)
  do
    mkdir error${i}
    echo error${i}.txt >> error${i}/error${i}.txt
    echo $0 >> error${i}/error${i}.txt
    echo $now >> error${i}/error${i}.txt
  done
fi
