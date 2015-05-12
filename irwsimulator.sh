#!/bin/bash
sleep 0.5

# $1 - the repeat counter Eg. 00, 01, 02
# $2 - the key pressed Eg. KEY_OK, KEY_UP
# $3 - the remote name Eg. my_remote
output() {
    local n="$(printf "%02d" $1)"
    echo "0000000000000000 $n $2 $3"
}

case "$1" in
something)
    command
    ;;

somethingelse)
    command
    ;;

*)
    for i in `seq 1 100`; do
        output $i KEY_OK remote1
        sleep 0.1
    done

esac