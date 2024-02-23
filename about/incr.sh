#!/bin/bash

source ./support/run.sh

function test_incr_increments_by_1 {
    redis-cli SET counter 0
    redis-cli INCR counter > output
    value=$(cat output)

    assertequals "$value" "1"
}