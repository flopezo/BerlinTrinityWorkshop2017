#!/bin/bash

docker ps | grep 'user_' | awk '{ print $1 }' | xargs -n1 docker stop

if [ $* ]; then
    docker ps -a | grep 'user_' | awk '{ print $1 }' | xargs -n1 docker rm
fi



