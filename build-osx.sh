#!/bin/sh

at_exit() {
    echo "Shutdown"
    ## always kill this box regardless of exit status
    sudo shutdown -h now
}
sig_at_exit() {
    trap '' EXIT
    at_exit
}
trap at_exit EXIT
trap sig_at_exit INT QUIT TERM

echo "build on osx"
sleep 30
exit 1
echo "build complete"
