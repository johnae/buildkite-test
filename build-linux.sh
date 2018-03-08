#!/bin/sh

echo "Ensuring libltdl is installed"
apk add -U libltdl
echo "Completed"

echo "Running the build script"
date
sleep 30 
docker ps
echo "done"
