#!/bin/bash
#valid json file

 
JSON=$(curl -i -H "Accept: application/json" https://drive.google.com/open?id=1fQPNwD65XdbI3iu7ujCppxN7NWv9NUKL)



TRIAL_ACCOUNTS = $(cat test.json | jq -r '.organzations[] | select( (.status == "in_trial") and .plan_id == "trial" and ."days-remaining-trial" > 0)')
##
##    curl -X POST -H 'Content-type: application/json' --data '{"text": $TRIAL_ACCOUNTS}' webhookurl