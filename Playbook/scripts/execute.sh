#!/bin/bash
#valid json file

 
JSON=$(curl -i -H "Accept: application/json" https://drive.google.com/open?id=1fQPNwD65XdbI3iu7ujCppxN7NWv9NUKL)



TRIAL_ACCOUNTS = test.json | jq -c '.organzations[] | select( (.plan_id == "trial") )' 
##
##    curl -X POST -H 'Content-type: application/json' --data '{"text": $TRIAL_ACCOUNTS}' webhookurl