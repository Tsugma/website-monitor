#!/bin/bash
URL=sme-urls.txt

while read website; do
    if [ ! -z "${website}" ]; then

        CURL=$(curl -s --head $website)

        if echo $CURL | grep "200 OK" > /dev/null
        then
            echo "($website) is up."

        else
            echo "($website) is down, Please check."
        fi
    fi
done < $URL
