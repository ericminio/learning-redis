#!/bin/bash

source ./support/cli.sh

function test_incr_increments_by_1 {
    redis-cli SET counter 0
    redis-cli INCR counter
    value=$(redis-cli GET counter)

    assertequals "$value" "1"
}