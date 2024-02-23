#!/bin/bash

function waiting {
    ready=0
    while [ "$ready" -eq "0" ]
    do    
        ready=`docker exec redis-6 redis-cli -h redis-6 INFO server | grep "redis_version" | wc -l`
        if [ "$ready" -eq "0" ]; then    
            echo "Waiting for redis instance redis-6"
            sleep 1;
        fi
    done;
    echo "redis instance redis-6 is ready";
}
