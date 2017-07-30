from django.shortcuts import render
from OnePlus5.models import *

# Create your views here.


def OnePlus5(request):
    return render(request,'OnePlus5.html',locals())

