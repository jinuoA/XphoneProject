#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from django.contrib import admin
from blog.views import *

urlpatterns = [
    url(r'^blog/$',blog,name='blog'),
    url(r'^blog_video/$',blog_video,name='blog_video'),
    url(r'^blog_news/$',blog_news,name='blog_news'),
    url(r'^blog_picture/$',blog_picture,name='blog_picture'),
    # url(r'^video/$',video,name='video'),
    url(r'^qiniu_video/$', qiniu_video, name='qiniu_video'),
    url(r'^uptoken/$', uptoken, name='uptoken'),

]