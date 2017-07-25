# -*- coding:utf-8 -*-
from django.db import models

# Create your models here.


# # 商品种类
#
# class ProductSort(models.Model):
#     sortName = models.CharField(max_length=10)
#     sortPic = models.ImageField(upload_to='uploads')
#
#
#     class Meta():
#         verbose_name = '商品'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.sortName.encode('utf-8')
#
#
# #　商品表
#
# class Product(models.Model):
#     ProductName = models.CharField(max_length=30)
#     ProductDesc = models.CharField(max_length=80)
#     ProductPrice = models.DecimalField(max_digits=7,decimal_places=2)
#     ProductImg = models.ImageField(upload_to='uploads/')
#     saleCount = models.IntegerField(default=0)
#     ProductSort = models.ForeignKey('ProductSort')
#     pubdate = models.DateTimeField()
#     ProductColor = models.CharField(max_length=20)
#     extra = models.CharField(max_length=20,null=True,blank=True)
#
#
#     class Meta():
#         verbose_name = '商品详情'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.ProductName.encode('utf-8')







# 导航标签

class Navtags(models.Model):
    TagName = models.CharField(max_length=20)
    TagImg = models.ImageField(upload_to='shop/navtags/%Y/%m')

    class Meta():
        verbose_name = '导航标签'
        verbose_name_plural = verbose_name


    def __str__(self):
        return self.TagName.encode('utf-8')

#标签详情

class TagGoods(models.Model):
    goodImg = models.ImageField(upload_to='shop/%Y/%m')
    goodName = models.CharField(max_length=20)
    goodPrice = models.DecimalField(max_digits=7,decimal_places=2)
    discount = models.DecimalField(u'折扣',max_length=1,max_digits=3,decimal_places=2)
    Navtags = models.ForeignKey(Navtags,verbose_name='导航标签')

    class Meta():
        verbose_name = '标签详情'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.goodName.encode('utf-8')

#商城广告

class Ad(models.Model):
    title = models.CharField(u'广告描述',max_length=50)
    img_url = models.ImageField(upload_to='shop/ad/%Y/%m')
    AdName = models.CharField(max_length=20)
    index = models.IntegerField(default=999)
    Navtags_id = models.ForeignKey('Navtags')
    class Meta():
        verbose_name = '商城广告'
        verbose_name_plural = verbose_name


    def __str__(self):
        return self.AdName.encode('utf-8')


#商城页商品


class ShopSales(models.Model):
    saleName = models.CharField(max_length=30)
    saleDese = models.CharField(max_length=30)
    salePrice = models.DecimalField(max_digits=5,decimal_places=2)
    saleImg = models.ImageField(upload_to='shop/sales/%Y/%m')
    index = models.IntegerField(u'显示顺序', default=999)
    # sale_Price = models.DecimalField(max_digits=5,decimal_places=2,verbose_name='折后价格')

    class Meta():
        verbose_name = '商城首页商品'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.saleName.encode('utf-8')





#手机参数

class PhoneArg(models.Model):
    title = models.CharField(max_length=20)
    arg_desc = models.CharField(max_length=200)
    img_url = models.ImageField(upload_to='shop/phone/%Y/%m')

    class Meta():
        verbose_name = '手机参数'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title


#服务内容

class ServerContent(models.Model):
    img_url = models.ImageField(u'图片',upload_to='shop/server/%Y/%m')
    title = models.CharField(max_length=20)

    class Meta():
        verbose_name = '服务选项'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title.encode('utf-8')

#　搜索内容

class Search(models.Model):
    name = models.CharField(max_length=50)

    class Meta():
        verbose_name = "搜索内容"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name












