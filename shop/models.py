# -*- coding:utf-8 -*-
from django.db import models

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

#商品展示

class Product_details(models.Model):
    name = models.CharField(max_length=30,)
    color = models.CharField(max_length=16,blank=True)
    title = models.CharField(max_length=30,verbose_name="标题")
    desc = models.CharField(max_length=200,verbose_name="描述",blank=True)
    price = models.DecimalField(max_digits=5,decimal_places=2,verbose_name="商品价格")
    img_url = models.ImageField(upload_to='shop/product/%Y/%m')
    small_img = models.ImageField(upload_to='shop/product/%Y/%m',blank=True,null=True)
    color_img = models.ImageField(upload_to='shop/product/%Y/%m',blank=True,null=True)
    sale = models.ForeignKey(ShopSales,default=1)


    class Meta():
        verbose_name = '商品展示'
        verbose_name_plural = verbose_name


    def __unicode__(self):
        return self.title


#商品详情

class Product_desc(models.Model):
    img_url = models.ImageField(upload_to='shop/product_desc/%Y/%m')
    title = models.CharField(max_length=30,blank=True)
    desc = models.CharField(max_length=100,blank=True)
    sale = models.ForeignKey(ShopSales,default=1)
    index = models.IntegerField(default=999, verbose_name="排序")

    class Meta():
        verbose_name = '商品详情'
        verbose_name_plural = verbose_name


    def __unicode__(self):
        return self.title

#规格参数

class Arg(models.Model):
    title = models.CharField(max_length=10)
    desc = models.CharField(max_length=100)
    sale = models.ForeignKey(ShopSales,default=1)
    index = models.IntegerField(default=999,verbose_name="排序")
    class Meta():
        verbose_name = '规格参数'
        verbose_name_plural = verbose_name


    def __unicode__(self):
        return self.title
#常见问题

class Prob(models.Model):
    title = models.CharField(max_length=30)
    desc = models.CharField(max_length=2000)
    index = models.IntegerField(default=999, verbose_name="排序")


    class Meta():
        verbose_name = '常见问题'
        verbose_name_plural = verbose_name


    def __unicode__(self):
        return self.title


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













