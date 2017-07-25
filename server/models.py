# -*- coding:utf-8 -*-
from django.db import models

# Create your models here.

#服务内容

class ServerContent(models.Model):
    img_url = models.ImageField(u'图片',upload_to='uploads/')
    title = models.CharField(max_length=20)

    class Meta():
        verbose_name = '服务选项'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title.encode('utf-8')

#常见问题

class CommonProblems(models.Model):
    title = models.CharField(max_length=50)
    content = models.TextField()

    class Meta():
        verbose_name = '常见问题'
        verbose_name_plural = verbose_name

    def __str__(self):
        return  self.title.encode('utf-8')


#联系我们

class Links(models.Model):
    title = models.CharField(max_length=15)
    img_url = models.ImageField(upload_to='uploads/')

    class Meta():
        verbose_name = '联系我们'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title.encode('utf-8')
