#!/bin/bash
curlPayload='{"tag_name":"'$1'","target_commitish": "master","name": "'$2'","body":"'$3'","draft": false,"prerelease": false}'
curl -X POST --data "$curlPayload" -H "Content-Type:application/json" -H "Authorization: token $4" https://api.github.com/repos/$5/$6/releases

