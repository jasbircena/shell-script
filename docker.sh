#!/bin/bash
###########################################
#
# Simple Shell script to clean/remove all images/volumes
#
# The script will
#  - remove images with none tag
#  - remove volumes
#
# remove all images
echo '####################################################'
echo 'Removing images ...'
echo '####################################################'
docker rmi $(docker images | grep "none" | awk '{print $3}')
# remove all stray volumes if any
echo '####################################################'
echo 'Revoming docker container volumes'
echo '####################################################'
docker volume rm $(docker volume ls -q) (edited) 
