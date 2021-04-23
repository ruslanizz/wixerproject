from django.db import models


class SalesReport(models.Model):
    filename = models.CharField(max_length=200, default='', blank=True)
