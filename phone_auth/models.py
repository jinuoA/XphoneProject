#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.db import models
from django.contrib.auth.models import AbstractUser


#　用户表(未完还需扩展)

class User(AbstractUser):
    avatar = models.ImageField(upload_to='avatar/%Y/%m', default='avatar/default.png', max_length=200, blank=True, null=True, verbose_name='用户头像')
    qq = models.CharField(max_length=20, blank=True, null=True, verbose_name='QQ号码')
    mobile = models.CharField(max_length=11, blank=True, null=True, unique=True, verbose_name='手机号码')
    url = models.URLField(max_length=100, blank=True, null=True, verbose_name='个人网址')
    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name
        ordering = ['-id']

    def __unicode__(self):
        return self.username

# class UserInfo(models.Model):
#     avatar = models.ImageField(upload_to='avatar/%Y/%m', default='avatar/default', max_length=200,
#                                blank=True, null=True, verbose_name='用户头像')
#     name = models.CharField(max_length=30,verbose_name='用户名')
#     password = models.CharField(max_length=20)
#     email = models.CharField(max_length=30)
#     phoneNumber = models.CharField(max_length=11,null=True)
#     addr = models.CharField(max_length=30,null=True,blank=True)
#     regDate = models.DateTimeField()
#     isDelete = models.BooleanField(default=False)
#     extra = models.CharField(max_length=20,null=True,blank=True)
#
#
#     class Meta():
#         verbose_name = '用户'
#         verbose_name_plural = verbose_name
#         ordering = ['-id']
#
#     def __str__(self):
#         return self.name.encode('utf-8')