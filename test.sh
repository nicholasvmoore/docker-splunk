#!/bin/bash
docker rm -f splunk
docker run -it --name splunk -P=true -v /mnt/lun0/software/docker/splunk:/opt/splunk/var/lib/splunk --entrypoint=bash splunk
