#!/bin/bash

clear

spin[0]="-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"

while [ ! -f /tmp/.init_done ]
do
  for i in "${spin[@]}"
  do
    echo -ne "\rInitalizing Environment, please wait! [ \b$i]"
    sleep 0.5
  done
done

cd examples/calculator && clear && wasmcloud -V
