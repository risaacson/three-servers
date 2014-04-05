#!/usr/bin/env bash

OPTIONS='-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

for i in $( seq 0 2 ); do
    ssh ${OPTIONS} root@192.168.251.1${i} 'poweroff'
done
