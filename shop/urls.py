#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url,patterns
from shop.views import *


urlpatterns = [
    url(r'^store/$',store,name='store'),
    url(r'^products/$',products,name='products'),
    url(r'^phone/$',phone,name='phone'),
    url(r'^product_details/(?P<id>\d+)/$',product_details,name='product_details'),
]





