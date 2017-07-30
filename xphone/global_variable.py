#!/usr/bin/env python
# -*- coding:utf-8 -*-
#@Author:zino

from xphone.models import *


def setting(request):
    navbar_list = NavBars.objects.all()
    content = {"navbar_lists": navbar_list}
    return content

