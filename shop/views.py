# -*- coding:utf-8 -*-
from django.shortcuts import render
from shop.models import *
from xphone.models import *
import logging
# Create your views here.


logger = logging.getLogger('shop.views')

def store(request):
    try:
        #导航
        nav_list = NavBars.objects.all()
        #商品种类
        tag_list = Navtags.objects.all()
        #搜索
        search_list = Search.objects.all()
        #商品
        good_lsit = ShopSales.objects.all()[:3]
        #配件
        Oneplus_list = ShopSales.objects.all()[4:8]
        rim_list = ShopSales.objects.all()[9:13]
        #购机服务
        service_list = ServerContent.objects.all()
    except Exception as e:
        logger.error(e)
    return render(request,'store.html',locals())

def product(request):
    try:
        pass
    except Exception as e:
        logger.error(u"访问的页面不存在")
    return render(request,'product.html',locals())
