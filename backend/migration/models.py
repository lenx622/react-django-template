from django.db import models


class Example(models.Model):
    test = models.CharField(max_length=255)
