#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from django.conf.urls import include, url
from django.contrib import admin
from phone_auth.views import *

urlpatterns = [
    url(r'^login/$', do_login, name='login'),
    url(r'^reg/$', do_reg, name='reg'),
    url(r'^logout/$', do_logout, name='logout'),
    url(r'^account/activate/(?P<token>\w+.[-_\w]*\w+.[-_\w]*\w+)/$', active_user, name='active_user'),

]