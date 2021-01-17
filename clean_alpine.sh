#!/bin/bash

sudo docker container stop my_alpine1 my_alpine2

sudo docker container rm my_alpine1 my_alpine2

sudo docker network rm alpine_network

sudo docker image rm alpine my_alpine

sudo docker volume rm vol_alpine1 vol_alpine2