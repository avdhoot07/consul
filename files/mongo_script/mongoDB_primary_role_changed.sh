#!/bin/bash
mongo localhost:27017 --eval 'printjson(db.serverStatus().repl.ismaster)' -u admin -p KFbTtv5O --authenticationDatabase admin | grep -c "false"
