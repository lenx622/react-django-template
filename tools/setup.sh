#! /bin/bash


text=$(cat << EOS
from .base import *

# WARNING: 下記のSECRET_KEYはそのまま利用しないでください。
SECRET_KEY = "ExampleExampleExampleExampleExampleExampleExampleExample"

DEBUG = True

ALLOWED_HOSTS = ["*"]

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": BASE_DIR / "db.sqlite3",
    }
}

EOS
)

echo "$text" > backend/config/settings/local.py
