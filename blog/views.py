from django.shortcuts import render
from blog.models import *
import logging
# Create your views here.


logger = logging.getLogger('blog.views')


def blog_video(request):
    try:
        pass
    except Exception as e:
        logger.error(e)

    return render(request,'blog_video.html',locals())