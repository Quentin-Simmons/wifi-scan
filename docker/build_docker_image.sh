#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi
set -x #echo on
docker ps -a | awk '{ print $1,$2 }' | grep $1 | awk '{print $1 }' | xargs -I {} docker rm {}
docker images | awk '{ print $1}' | grep $1 | awk '{print $1 }' | xargs -I {} docker image rm {}
docker system prune -f
#docker ps -a | grep $1 | awk '{print $1}' | xargs docker rm
#docker image rm $1
#docker system prune -af
#echo $1
#echo $2
echo $USERNAME
echo $UID
docker build --build-arg USERNAME=${USER}  --build-arg USER_ID=${UID} --tag $1 --file $1 .