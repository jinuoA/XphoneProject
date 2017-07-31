# -*- coding:utf-8 -*-
from django.shortcuts import render, HttpResponse, HttpResponseRedirect
from forms import *
from xphone.models import *
from django.contrib.auth.hashers import make_password
from django.contrib.auth import login, logout, authenticate
from django.core.urlresolvers import reverse

import base64
from itsdangerous import URLSafeTimedSerializer as utsr

from django.core.mail import send_mail
from XphoneProject.settings import SECRET_KEY, EMAIL_HOST_USER, DEFAULT_FROM_EMAIL, MEDIA_URL, MEDIA_ROOT
from xphone.views import *
# Create your views here.

# 邮件验证连接编码
class Token(object):
    def __init__(self, security_key):
        self.security_key = security_key
        self.salt = base64.encodestring(security_key)

    def generate_validate_token(self, username):
        serializer = utsr(self.security_key)
        return serializer.dumps(username, self.salt)

    def confirm_validate_token(self, token, expiration=3600):
        serializer = utsr(self.security_key)
        return serializer.loads(token, salt=self.salt, max_age=expiration)

token_confirm = Token(SECRET_KEY)

# def index(request):
#     title = 'super + 首页'
#     return render(request, 'index1.html', locals())


# 注册
def do_reg(request):
    title = 'super + 注册'
    try:
        if request.method == 'POST':
            reg_form = RegForm(request.POST)
            if reg_form.is_valid():
                print '-' * 50
                cd = reg_form.cleaned_data
                username, password, email = cd['username'], cd['password'], cd['email']
                user = User.objects.create(username=username, password=make_password(password), email=email, is_active=False)
                # user.backend = 'django.contrib.auth.backends.ModelBackend'  # 指定的默认登录方式
                # login(request, user)
                # return HttpResponse('注册成功！')
                user.set_password(reg_form.cleaned_data['password'])
                user.save()
                # print 'aaaaaaaaaaaaa'
                token = token_confirm.generate_validate_token(username)
                print token
                message = "\n".join([u'亲爱的{0},欢迎加入super+手机大家庭'.format(username), u'请访问该链接，完成用户验证：',
                                     '/'.join(['http://127.0.0.1:8000', 'account/activate', token])])
                send_mail(u'注册用户验证信息', message, DEFAULT_FROM_EMAIL, [email])
                # return render(request, 'index.html', locals())
                return HttpResponse(u"请登录到注册邮箱中验证用户，有效期为1个小时。")
            else:
                return render(request, 'sign.html', locals())
        else:
            reg_form = RegForm()
    except Exception as e:
        print e
    return render(request, 'sign.html', locals())

# 激活用户
def active_user(request, token):
    # print 'bbbbbbbbbbbb'
    try:
        username = token_confirm.confirm_validate_token(token)
    except:
        return HttpResponse(u'对不起，验证链接已经过期')
    try:
        user = User.objects.get(username=username)
    except User.DoesNotExist:
        return HttpResponse(u'对不起，您所验证的用户不存在，请重新注册')
    print user.username
    user.is_active = True
    user.save()
    return HttpResponseRedirect(reverse(do_login))

# 登录
def do_login(request):
    title = 'super + 登录'
    try:
        if request.method == 'POST':
            login_form = LoginForm(request.POST)
            if login_form.is_valid():
                username = login_form.cleaned_data['username']
                password = login_form.cleaned_data['password']
                user = authenticate(username=username, password=password)
                if user is not None:
                    user.backend = 'django.contrib.auth.backends.ModelBackend'
                    login(request, user)
                    return HttpResponseRedirect(reverse(index))
                else:
                    login_error = '登录失败，请检查用户名密码是否正确。'
                    return render(request, 'login.html', locals())
        login_form = LoginForm()
        return render(request, 'login.html', locals())
    except Exception as e:
        print e

# 退出
def do_logout(request):
    try:
        logout(request)
    except Exception as e:
        print e
    return HttpResponseRedirect(reverse(index))
