#!/bin/bash
# build.sh
# Conversion of build.cmd to a shell script.

docker build -t Student:1.0 .
docker images