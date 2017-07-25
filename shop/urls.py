#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from shop.views import *

urlpatterns = [
    url(r'^store',store,name='store' ),
    url(r'^product',product,name='product' ),
]