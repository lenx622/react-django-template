from django.core.management.utils import get_random_secret_key


if __name__ == '__main__':
    print("SECRET_KEY:", get_random_secret_key())
