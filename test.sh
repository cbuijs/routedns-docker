#!/bin/bash

/bin/bash stop.sh

docker -D run -it --rm -v cache:/cache --network host --name routedns routedns

