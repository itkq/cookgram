#!/bin/bash

sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli

ecs-cli configure --cluster Cookgram
ecs-cli compose service up
