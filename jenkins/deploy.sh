#!/bin/bash

echo "deploy stage"

scp docker-compose.yaml jenkins@swarm:/home/jenkins/docker-compose.yaml
ssh jenkins@swarm docker stack deploy --compose-file docker-compose.yaml todo-app