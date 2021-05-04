
#!/bin/bash +x

alias cargo='docker run -it -w /data --entrypoint cargo -v $(pwd):/data cjrash/tutorial'
alias tinygo='docker run -it -w /data --entrypoint tinygo -v $(pwd):/data tinygo/tinygo'


clear

spin[0]="-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"

while [ ! -f /tmp/.init_done ]
do
  for i in "${spin[@]}"
  do
    echo -ne "\rInitalizing Environment, this may take a few minutes.  Please wait! [ \b$i]"
    sleep 0.5
  done
done

clear && cd examples/ && wasmcloud -V

