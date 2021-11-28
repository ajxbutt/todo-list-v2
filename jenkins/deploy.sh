#!/bin/bash

echo "deploy stage"

scp docker-compose.yaml jenkins@swarm:/home/jenkins/docker-compose.yaml
ssh jenkins@swarm DOCKER_HUB_CREDS_USR=$DOCKER_HUB_CREDS_USR docker stack deploy --compose-file docker-compose.yaml todo-app