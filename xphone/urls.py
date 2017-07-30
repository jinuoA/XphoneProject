#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from django.contrib import admin
from xphone.views import *
urlpatterns = [
    # url(r'^', index,name='index'),
    url(r'^index/$', index,name='index'),
    # url(r'^store$', store, name='store'),
    # url(r'^service$', service, name='service'),
    # url(r'^blog$', blog, name='blog'),


]