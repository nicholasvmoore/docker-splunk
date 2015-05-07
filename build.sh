#!/bin/bash
docker rm -f splunk
docker rmi splunk
docker build -t splunk .
