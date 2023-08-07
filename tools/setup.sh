#! /bin/bash


backend_local_py_text=$(cat << EOS
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

frontend_dot_env_text=$(cat << EOS
REACT_APP_API_BASE_URL="http://localhost:8000"

EOS
)

echo "$backend_local_py_text" > backend/config/settings/local.py
echo "$frontend_dot_env_text" > frontend/.env
