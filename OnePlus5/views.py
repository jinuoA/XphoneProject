from django.shortcuts import render
from OnePlus5.models import *
from blog.models import Video

# Create your views here.

def video(request,id):
    try:
        video_list = Video.objects.filter(id=id)

    except:
        pass
    return render(request,'demo.html',locals())

def OnePlus5(request):
    try:
        video = Video.objects.filter(id=1)
    except Exception as e:
        pass
    return render(request,'OnePlus5.html',locals())

