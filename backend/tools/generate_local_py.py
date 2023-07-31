import os

FILE_PATH = "../config/settings/local.py"
CONTENT = '''from .base import *
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
'''


def main():
    with open(FILE_PATH, "w") as file:
        file.write(CONTENT)


if __name__ == '__main__':
    main()