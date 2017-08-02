# -*- coding:utf-8 -*-
from blog.models import *
from django.db import models
from django.contrib.auth.models import AbstractUser


#　用户表(未完还需扩展)

# class User(AbstractUser):
#     avatar = models.ImageField(upload_to='avatar/%Y/%m', default='avatar/default', max_length=200,
#                                blank=True, null=True, verbose_name='用户头像')
#
#     class Meta:
#         verbose_name = '用户'
#         verbose_name_plural = verbose_name
#         ordering = ['-id']
#
#     def __unicode__(self):
#         return self.username

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


#导航

class NavBars(models.Model):
    NavName = models.CharField(max_length=10)
    url = models.CharField(max_length=200, blank=True, null=True,
                           verbose_name=u'指向地址')
    english = models.CharField(max_length=10,blank=True)
    NavLog = models.ImageField(upload_to='uploads/',blank=True)
    NavImg = models.ImageField(upload_to='uploads/',blank=True)

    class Meta():
        verbose_name = "导航"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.NavName.encode('utf-8')


#首页

class IndexPage(models.Model):
    title = models.CharField(max_length=30)
    img_url = models.ImageField(upload_to='uploads/')
    img_desc = models.CharField(max_length=100)
    News = models.ForeignKey(News)
    Video = models.ForeignKey(Video)
    Article = models.ForeignKey(Article)

    class Meta():
        verbose_name = "首页"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title

#一加产品

class Product(models.Model):
    proName = models.CharField(max_length=20)

    class Meta():
        verbose_name = "一加产品"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.proName


# 关于一加

class About(models.Model):
    name = models.CharField(max_length=20)

    class Meta():
        verbose_name = "关于一加"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


# 服务支持

class Server(models.Model):
    name = models.CharField(max_length=20)

    class Meta():
        verbose_name = "服务支持"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


#　搜索内容

class Search(models.Model):
    name = models.CharField(max_length=50)

    class Meta():
        verbose_name = "搜索内容"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name