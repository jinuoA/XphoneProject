#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from django.contrib import admin
from xphone.views import *
urlpatterns = [
    url(r'^index', index,name='index'),
]