#!/bin/bash

#Check if Docker is Installed
docker_installed=`docker -v | echo $?`

if [ $docker_installed -ne 0 ]
    then
        echo "Please install docker on your system. "
    exit 1;
fi

#Check if docker-compose is installed
docker_compose_installed=`docker-compose -v | echo $?`

if [ $docker_compose_installed -ne 0 ]
    then
        echo "Please install docker-compose on your system. "
        exit 1;
fi

#Check Docker Permissions
docker_permissions=`docker info | echo $?`

if [ $docker_permissions -ne 0 ]
    then   
        echo -e "To have this script run the required installs please update permissions for docker\n" \
            'Example: `sudo usermod -aG docker $(whoami)`'
fi

#TODO write script to build and run the docker images
# docker build -t hellothere .
# docker run -it --rm -p 127.0.0.1:8888:8080/tcp --name hellothererunning hellothere


