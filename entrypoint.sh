#!/bin/bash

if [ ! "$#" -eq 1 ];
then
    echo "[ERROR] args should be 1" >&1
    exit 1
fi

OIFS="$IFS"
IFS="," read -r -a ports <<< "$@"
IFS="$OIFS"

for port in "${ports[@]}"
do
    docker run --name memcached-"${port}" -p "${port}":11211 --detach memcached > /dev/null
    echo "[INFO] Run memcached on port ${port}"
done

echo "[INFO] Run mamcached cluster"
