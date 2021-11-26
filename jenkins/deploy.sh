#!/bin/bash

echo "deploy stage"

ssh jenkins@swarm docker stack deploy --compose-file docker-compose.yaml todo-app