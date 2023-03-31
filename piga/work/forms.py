from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
from .models import Teacher, Student, Course, Homework, Handin, Comment, Group
from ckeditor_uploader.widgets import CKEditorUploadingWidget


class RegistrationForm(forms.Form):
    username = forms.CharField(label=' 用户名', max_length=50)
    password1 = forms.CharField(label=' 密 码 ', widget=forms.PasswordInput)
    password2 = forms.CharField(label='确认密码', widget=forms.PasswordInput)
    role = forms.ChoiceField(label='角色', choices=((0, '学生'), (1, '教师')))

    def clean_username(self):
        username = self.cleaned_data.get('username')

        if len(username) < 6:
            raise forms.validationError("用户名必须至少为6个字符！")
        elif len(username) > 50:
            raise forms.ValidationError("用户名太长！")
        else:
            filter_result = User.objects.filter(username__exact=username)
            if len(filter_result) > 0:
                raise forms.ValidationError("用户名已存在！")
        return username

    def clean_password1(self):
        password1 = self.cleaned_data.get('password1')

        if len(password1) < 6:
            raise forms.ValidationError("密码太短！")
        elif len(password1) > 20:
            raise forms.ValidationError("密码太长！")
        return password1

    def clean_password2(self):
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("密码不匹配，请重新输入！")

        return password2


class LoginForm(forms.Form):
    username = forms.CharField(label='用户名', max_length=50)
    password = forms.CharField(label='密码', widget=forms.PasswordInput)

    def clean_username(self):
        username = self.cleaned_data.get('username')
        filter_result = User.objects.filter(username__exact=username)
        if not filter_result:
            raise forms.ValidationError("用户名不存在！")
        return username


class ProfileForm(forms.Form):
    name = forms.CharField(label='姓名', max_length=50, required=False)
    gender = forms.ChoiceField(label='性别', widget=forms.Select(), choices=([('0', '男'), ('1', '女'), ]), required=False)


class PwdChangeForm(forms.Form):
    old_password = forms.CharField(label=' 原 密 码 ', widget=forms.PasswordInput)
    password1 = forms.CharField(label=' 新 密 码 ', widget=forms.PasswordInput)
    password2 = forms.CharField(label='确认密码', widget=forms.PasswordInput)

    def clean_password1(self):
        password1 = self.cleaned_data.get('password1')

        if len(password1) < 6:
            raise forms.ValidationError("密码太短！")
        elif len(password1) > 20:
            raise forms.validationError("密码太长！")
        return password1

    def clean_password2(self):
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("密码不匹配，请重新输入！")
        return password2