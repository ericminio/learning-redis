#!/bin/bash

function test_incr_increments_by_1 {
    docker exec redis-6 redis-cli -h redis-6 SET counter 0
    docker exec redis-6 redis-cli -h redis-6 INCR counter > output
    value=$(cat output)

    assertequals "$value" "1"
}