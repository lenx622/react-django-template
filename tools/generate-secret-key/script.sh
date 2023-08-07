#!/bin/bash

cd "$(dirname "$0")"
secret_key_generator=$(<./generate_secret_key.py)

echo "$(docker-compose run --rm backend sh -c "python -c '$secret_key_generator'")"
