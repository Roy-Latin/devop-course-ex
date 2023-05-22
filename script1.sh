#!/usr/bin/bash

trap 'cant do that' SIGINT SIGTERM 
while true;
do
 echo "I am alive"
 sleep 1
done

