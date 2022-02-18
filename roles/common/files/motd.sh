#!/bin/sh
figlet "$(hostname)" | lolcat -f && echo

printf "$(sysctl -a | grep hw.model | sed 's/hw.model/CPU/')\n"
printf "$(sysctl -a | grep hw.ncpu | sed 's/hw.ncpu/Cores/')\n"
printf "$(sysctl -a | grep hw.physmem | sed 's/hw.physmem/Memory/')\n\n"
