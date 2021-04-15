#!/bin/bash

/bin/bash stop.sh

docker run -dit --rm --network host --name routedns routedns

