#!/bin/bash

CURR_OS=$(uname)

if [[ "$CURR_OS" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS for this target!"
    exit
fi

