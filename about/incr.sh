#!/bin/bash

source ./support/cli.sh

function test_incr_increments_by_1 {
    redis-cli SET counter 41
    redis-cli INCR counter

    assertequals `redis-cli GET counter` 42
}