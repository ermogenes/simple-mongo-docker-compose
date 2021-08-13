#!/bin/bash
set -euo pipefail

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    db.auth('$MONGO_INITDB_ROOT_USERNAME', '$MONGO_INITDB_ROOT_PASSWORD');
    db = db.getSiblingDB('$DB_NAME');
    db.createUser({
      user: '$DB_USER',
      pwd: '$DB_PASSWORD',
      roles: [{ role: 'readWrite', db: '$DB_NAME' }]
    });
    db.citizens.createIndex({ "name": 1 }, { unique: false });
    db.citizens.createIndex({ "socialName": 1 }, { unique: false });
EOF
