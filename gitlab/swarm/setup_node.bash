#!/bin/bash
# This script adds a label to the docker swarm node that is used to identify this node as the gitlab host
docker node update --label-add main_gitlab_server=true $(docker node ls -q)