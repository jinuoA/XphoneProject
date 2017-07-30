from django.shortcuts import render
from server.models import *
# Create your views here.


def server(request):
    try:
        pass
    except Exception as e:
        pass
    return render(request,'service.html',locals())

