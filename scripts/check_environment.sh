#!/usr/bin/env bash

i=0
while [ $i -ne 15 ]
do
        containers=$(docker ps --format "{{.ID}}" | wc -l)

        if [ "$containers" -eq "0" ]; then
           exit 0
        fi
        sleep 2
done

docker ps
echo "Number of containers are still running:" "$containers"
exit 255;