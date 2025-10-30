#!/bin/bash
#sudo docker system prune -af
#./build_docker_image.sh dev_cpp_wifi
docker run \
	-it \
	-v ${HOME}/Projects:/home/$USER/Projects dev_cpp_wifi

