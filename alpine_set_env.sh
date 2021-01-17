#!/bin/bash

sudo docker build -f Dockerfile -t my_alpine .

# Create network
sudo docker network create -d bridge alpine_network

# Create volumes
sudo docker volume create vol_alpine1
sudo docker volume create vol_alpine2

sudo cp nc_server.sh /var/lib/docker/volumes/vol_alpine1/_data/
sudo cp nc_client.sh /var/lib/docker/volumes/vol_alpine2/_data/

# Create my_alpine1 and my_alpine2 docker containers and connect them to the alpine_network
sudo docker container run -it --detach --network alpine_network --name my_alpine1 -v vol_alpine1:/root my_alpine
sudo docker container run -it --detach --network alpine_network --name my_alpine2 -v vol_alpine2:/root my_alpine