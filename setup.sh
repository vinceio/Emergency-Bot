#!/bin/bash

#Check if Docker is Installed
docker_installed=`docker -v | echo $?`

if [ $docker_installed -ne 0 ]
    then
        echo "Please install docker on your system. "
    exit 1;
fi

#Check Docker Permissions

docker_permissions=`docker info | echo $?`

if [ $docker_permissions -ne 0 ]
    then   
        echo -e "To have this script run the required installs please update permissions for docker\n" \
            'Example: `sudo usermod -aG docker $user`'
fi

