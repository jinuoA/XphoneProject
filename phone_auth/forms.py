# -*- coding:utf-8 -*-
from django import forms
from phone_auth.models import *

class LoginForm(forms.Form):
    username = forms.CharField(widget=forms.TextInput(attrs={'placeholder': u'用户名', 'required': 'required'}),
                               max_length=50, error_messages={'required': u'用户名不能为空'})
    password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': u'密码', 'required': 'required'}),
                               max_length=16, error_messages={'required': u'密码不能为空'})



class RegForm(forms.Form):
    # 注册表单
    username = forms.CharField(widget=forms.TextInput(attrs={'placeholder': u'用户名', 'required': 'required'}),
                               max_length=50, error_messages={'required': u'用户名不能为空'})
    email = forms.EmailField(widget=forms.TextInput(attrs={'placeholder': u'邮箱', 'required': 'required'}),
                               max_length=50, error_messages={'required': u'邮箱不能为空'})
    password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': u'密码', 'required': 'required'}),
                               min_length=6, max_length=16, error_messages={'required': u'密码不能为空'})
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': u'确认密码', 'required': 'required'}),
                               min_length=6, max_length=16, error_messages={'required': u'确认密码不能为空'})

    def clean(self):
        cleaned_data = self.cleaned_data
        password = cleaned_data["password"]
        password2 = cleaned_data["password2"]
        user = cleaned_data["username"]
        if User.objects.filter(username=user).all():
            raise forms.ValidationError(u'该用户名已存在！')
        print password, password2
        if password != password2:
            raise forms.ValidationError(u"两次密码必须一致")
        return cleaned_data