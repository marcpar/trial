#EXAM

## 1
You have the following file content https://drive.google.com/open?id=18CkmWcXXlZZdJdzeVS8XIFgyuuf6EOcr

Ans:
I created a bashscript timefinder.sh can be executed by crobjob

How to use

```
chmod +x timefinder.sh

./timefinder.sh  daemonEND.data

sudo crontab -e 


```


please change webhook url 

in line 16
```bash
#    curl -X POST -H 'Content-type: application/json' --data '{"text": $FILENAME}' webhookurl
```



## 2
You have the test.json file url. https://drive.google.com/open?id=1fQPNwD65XdbI3iu7ujCppxN7NWv9NUKL
Can you write an ansible playbook to get the file from the link and send one slack message with all the labels of the organizations:

for ansible I would use this:

Organzation in the test.json is misspelled 

https://docs.ansible.com/ansible/latest/modules/slack_module.html

## 3

If you have to do the same as in task 2 but with some linux command line tools, how would you approach this?s

under playbook i created an script/execute.sh

```bash
marcpar@Marcs-MacBook-Pro   ~/workspace/exam/norway     master  cat test.json | jq -r '.organzations[] | select( (.status == "in_trial") and .plan_id == "trial" and ."days-remaining-trial" > 0)'


{
  "disposable": false,
  "name": "testeroony",
  "created": "2019-08-09T15:16:33.151Z",
  "status": "in_trial",
  "label": "testeroony",
  "plan_id": "trial",
  "members": 1,
  "days-remaining-trial": 7
}
{
  "disposable": false,
  "name": "unknown",
  "created": "2019-11-04T13:01:06.633Z",
  "status": "in_trial",
  "label": "unknown",
  "plan_id": "trial",
  "members": 1,
  "days-remaining-trial": 20
}
{
  "disposable": false,
  "name": "天天平台全新改版-琎151880。c0M找客服首忡100宋38金~",
  "created": "2019-10-25T11:26:09.884Z",
  "status": "in_trial",
  "label": "151880c0m10038",
  "plan_id": "trial",
  "members": 1,
  "days-remaining-trial": 9
}
```


