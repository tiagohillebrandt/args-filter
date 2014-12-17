#!/bin/bash

test -f /usr/bin/args-filter && source /usr/bin/args-filter "$*"

if [[ -n $arg_active ]]; then
    echo "--active is set"
fi

echo "name: $arg_name"
echo "coffee-please: $arg_coffeeplease"
