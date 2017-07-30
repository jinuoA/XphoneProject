# -*- coding:utf-8 -*-
from django.shortcuts import render
from xphone.models import *
from blog.models import *
import logging
from django.http import HttpResponse
from django.core.paginator import Paginator,InvalidPage,EmptyPage,PageNotAnInteger

import json
import qiniu.conf
import qiniu.rs
import qiniu.io

# Create your views here.
BUCKET_NAME = "1107194939@qq.com"
qiniu.conf.ACCESS_KEY = "flTet2awAnDzYTQh2RePRJe07lzmFpIvP5GZwaSx"
qiniu.conf.SECRET_KEY = "_3qrfvrvttMpBrFKOG1NbxarDZBCJS6YAPdacTxi"



logger = logging.getLogger('blog.views')

# 分页代码
def getPage(request, article_list):
    paginator = Paginator(article_list, 5)
    try:
        page = int(request.GET.get('page', 1))
        article_list = paginator.page(page)
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        article_list = paginator.page(1)
    return article_list



def blog(request):
    try:

        #文章内容
        article_list = Article.objects.all()
    except Exception as e:
        logger.error(e)

    return render(request,'blog.html',locals())



def blog_video(request):
    try:
        video_list = Video.objects.all()
    except Exception as e:
        logger.error(e)

    return render(request,'blog_video.html',locals())


def video(request):
    try:
        pass
    except:
        pass
    return render(request,'index_1.html',locals())


def blog_picture(request):
    try:
        proPic_list = ProPic.objects.order_by("id")

    except Exception as e:
        logger.error(e)

    return render(request,'blog_picture.html',locals())


def blog_news(request):
    try:
        # 文章内容
        article_list = Article.objects.all()
    except Exception as e:
        logger.error(e)

    return render(request,'blog_news.html',locals())

#qiniu
def qiniu_video(request):
    return render(request, 'qiniu_video.html',locals())

def uptoken(request):
    policy = qiniu.rs.PutPolicy(BUCKET_NAME)
    token = policy.token()
    data = {'uptoken': token}
    return HttpResponse(json.dumps(data), content_type="application/json")


#分页代码
def getPage(request,article_list):
    paginator = Paginator(article_list, 3)
    try:
        page = int(request.GET.get('page', 1))
        article_list = paginator.page(page)
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        article_list = paginator.page(1)
    return article_list