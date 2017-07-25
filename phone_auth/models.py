#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.db import models

#　用户表(未完还需扩展)

class UserInfo(models.Model):
    name = models.CharField(max_length=30,verbose_name='用户名')
    password = models.CharField(max_length=20)
    email = models.CharField(max_length=30)
    phoneNumber = models.CharField(max_length=11,null=True)
    addr = models.CharField(max_length=30,null=True,blank=True)
    regDate = models.DateTimeField()
    isDelete = models.BooleanField(default=False)
    extra = models.CharField(max_length=20,null=True,blank=True)


    class Meta():
        verbose_name = '用户'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name.encode('utf-8')