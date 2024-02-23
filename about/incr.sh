#!/bin/bash

function test_incr_increments_by_1 {
    docker-compose run --rm redis redis-cli -h redis-6 SET counter 0
    docker-compose run --rm redis redis-cli -h redis-6 INCR counter > output
    value=$(cat output | grep "(integer) 1" | wc -l)

    assertequals $value 1
}