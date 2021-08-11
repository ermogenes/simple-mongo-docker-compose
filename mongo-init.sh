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
    db.colecaoInicial01.createIndex({ "address.zip": 1 }, { unique: false });
    db.colecaoInicial01.insert({ "address": { "city": "Paris", "zip": "123" }, "name": "Mike", "phone": "1234" });
    db.colecaoInicial01.insert({ "address": { "city": "Marsel", "zip": "321" }, "name": "Helga", "phone": "4321" });
EOF
