#!/bin/bash

echo "deploy stage"

ssh jenkins@kiwi docker stack deploy --compose-file docker-compose.yaml todo-app