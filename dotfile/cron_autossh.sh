#!/bin/bash

result=`ps aux | grep -i "autossh -M" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
then
    echo 'autossh 3333 is running'
else
    echo 'Start autossh 3333'
    autossh -M 65432 -NfR 3333:localhost:22 yaoshihyu@35.236.179.104
fi
