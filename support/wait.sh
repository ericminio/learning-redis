#!/bin/bash

source ./support/cli.sh

function waiting {
    ready=0
    while [ "$ready" -eq "0" ]
    do    
        ready=`redis-cli INFO server | grep "redis_version" | wc -l`
        if [ "$ready" -eq "0" ]; then    
            echo "Waiting for redis"
            sleep 1;
        fi
    done;
    echo "redis is ready";
}

waiting redis-6