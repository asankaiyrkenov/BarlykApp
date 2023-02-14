from __future__ import absolute_import
from django.db import models


class Person(models.Model):
    fullname = models.TextField(max_length=100)
    password = models.TextField()
    email = models.TextField()
    number = models.TextField()
    liked = models.ManyToManyField('Product', related_name='liked_by')

class Product(models.Model):
    title = models.TextField()
    text = models.TextField()
    price = models.TextField()
    image = models.TextField()
    states = models.TextField()
    city = models.TextField()
    isDeliver = models.TextField()
    seller = models.ForeignKey(Person, on_delete=models.CASCADE, null=True, related_name='liked_products')
    cartype = models.TextField()
    likes = models.ManyToManyField(Person, related_name='likes')
    views = models.ManyToManyField(Person, related_name='views')
