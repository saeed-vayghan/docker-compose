#!/bin/bash

echo ">>> Configuring database and user access >>>"

mongo -u 'admin' -p 'admin' <<EOF
db=db.getSiblingDB('demox');
use demox;
db.createUser({
  user:  'username',
  pwd: 'password',
  roles: [{
    role: 'dbOwner',
    db: 'demox'
  }]
});
EOF
