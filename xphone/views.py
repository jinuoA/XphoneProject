from django.shortcuts import render
from xphone.models import *
# Create your views here.

def index(request):
    try:
        nav_list = NavBars.objects.all()
    except:
        pass
    return render(request,'index.html',locals())
