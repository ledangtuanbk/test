#!/bin/bash
 timestamp=$(date +%s); echo tt= $timestamp
 fulltime=$(($timestamp + 2209161600)); echo ft= $fulltime
 license="9004";echo lc=$license
 secreteKey=hB14ZXu@3vYMNqmS#eGl; echo sk=$secreteKey
 fulltoken=$(echo -n $secreteKey$license$fulltime | sha256sum)
 token=${fulltoken% *}
 curl -vX POST -d @$1 "http://62.4.19.165:8082/manhattan-1.0.x/data" -H "content-type: application/json" -H "accept: */*" -H "licensenumber: ${license}" -H "token: ${token}"
