#!/bin/bash

## get paramater
FILE=${1}
FILENAME=${basename $FILE}
## timestamp
TIMESTAMP=$( grep -Eo '{:time \s*(\S+)' $FILE |awk -F'[, ]' '{print $2}'| sort -r | sed '1!d'\ )

START=$( date -d  @$TIMESTAMP +%s )

CURRD=$(date -d '1 hour ago' +%s)

##compare epoch
if [$START < $CURRD] then
echo 
#    curl -X POST -H 'Content-type: application/json' --data '{"text": $FILENAME}' webhookurl
#    curl mail sendgrid
then
    break
fi  