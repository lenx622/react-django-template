#!/bin/bash

BASE_DIR="../.."

cd "$(dirname "$0")"
cp ./files/local.py $BASE_DIR/backend/config/settings/local.py
cp ./files/.env $BASE_DIR/frontend/.env
