#!/bin/bash

alias cargo='docker run -it -w /data --entrypoint cargo -v $(pwd):/data cjrash/tutorial'
alias tinygo='docker run -it -w /data -v $(pwd):/data tinygo/tinygo'
alias wasmcloud='docker run -it -w /data -v $(pwd):/data wasmcloud/wasmcloud'
alias wash='docker run -it -w /data -v $(pwd):/data wasmcloud/wash'

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
