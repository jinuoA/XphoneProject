#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from django.contrib import admin
from OnePlus5.views import *

urlpatterns = [
    url(r'^OnePlus5/$', OnePlus5,name='OnePlus5'),
    # url(r'^video_main/(?P<id>\d+)/$', video_main,name='video_main'),
]