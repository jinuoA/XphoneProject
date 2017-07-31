#-*- coding:utf-8 -*-
from django.shortcuts import render

from xphone.models import *


# Create your views here.

def global_setting(request):
    nav_list = NavBars.objects.all()
    # 产品
    product_list = Product.objects.all()
    # 关于super
    about_list = About.objects.all()
    # 服务支持
    service_list = Server.objects.all()
    return {
        "nav_list":nav_list,
        "product_list":product_list,
        "about_list":about_list,
        "service_list":service_list,
    }



def base(request):
    try:
        #产品
        product_list = Product.objects.all()
        #关于super
        about_list = About.objects.all()
        #服务支持
        service_list = Server.objects.all()
    except:
        pass
    return render(request,'base.html',locals())

# def index(request):
#     try:
#         pass
#     except Exception as e:
#         pass
#     return render(request,'index_1.html',locals())



def index(request):
    title = 'super + 首页'
    return render(request, 'index1.html', locals())



# 商城
def store(request):
    return render(request, 'store.html', locals())


# 服务
def service(request):
    return render(request, 'service.html', locals())

def blog(request):
    return render(request,'blog.html',locals())
