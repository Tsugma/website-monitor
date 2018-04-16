#!/bin/bash
URL=sme-urls.txt
DATE=`date +%Y-%m-%d:%H:%M:%S`

while read website; do
    if [ ! -z "${website}" ]; then

        CURL=$(curl -s --head $website)

        if echo $CURL | grep "200 OK" > /dev/null
        then
            echo "<$DATE> ($website) is up."

        else
            echo "<$DATE> ($website) is down, Please check."
        fi
    fi
done < $URL
