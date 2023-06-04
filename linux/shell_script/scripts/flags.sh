#!/usr/bin/env bash

USERS="$(cat /etc/passwd | cut -f 1 -d ":")"

MESSAGE="
    $0 - [OPTIONS]

    -h - Help menu
    -v - Program Version
    -s - Sort Output
"

VERSION="v1.0"

if [ "$1" = "-h" ]; then
    echo "$MESSAGE" && exit 0
fi

if [ "$1" = "-v" ]; then
    echo "$VERSION" && exit 0
fi

if [ "$1" = "-s" ]; then
    echo "$USERS" | sort && exit 0
fi

echo "$USERS"