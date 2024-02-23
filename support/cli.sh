#!/bin/bash

function redis-cli {
    docker exec redis-6 redis-cli "$@"
}
