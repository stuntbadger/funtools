#!/bin/bash

sp="⣾⣽⣻⢿⡿⣟⣯⣷"
sp="⠁⠂⠄⡀⢀⠠⠐⠈"
#sp="◢ ◣ ◤ ◥"
#sp="▉▊▋▌▍▎▏▎▍▌▋▊▉"
#sp="▁ ▃ ▄ ▅ ▆ ▇ █ ▇ ▆ ▅ ▄ ▃"

progressbar () {
        local processed=$1
        local total=$2
        local percentage=$(( $processed * 100 / $total ))
        printf "\r%3d%% complete  " $percentage
}
spin() {
   printf "\b${sp:sc++:1} "
   ((sc==${#sp})) && sc=0
}
endspin() {
   printf "\r%s\n" "$@"
}

sc=0

# do a lot of work
for i in {1..2000}
do
        progressbar $i 2000 && spin

        # do work
        sleep 0.2
        
done 
endspin
