#!/bin/bash

which ecs-cli
if [ $? -ne 0 ] ; then
  sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
  sudo chmod +x /usr/local/bin/ecs-cli
fi

ecs-cli configure --cluster Cookgram
ecs-cli compose up
