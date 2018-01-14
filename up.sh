#! /bin/bash

# Update our git repo
git reset --hard HEAD
git pull

# Then find and kill the container currently running
docker stop $(docker ps | grep "divvyupsite" | awk '{print $1;}')
# Rebuild it
docker build -t divvyupsite .
# Finally bring it back up
docker run -d -p 3054:3054 divvyupsite