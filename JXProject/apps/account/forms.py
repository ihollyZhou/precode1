from django import forms
from django.contrib.auth.models import User
from .models import UserProfile, UserInfo

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)


class RegistrationForm(forms.ModelForm):
    password = forms.CharField(label="输入密码", widget=forms.PasswordInput)
    password2 = forms.CharField(label="确认密码", widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ("username", "email")

    def clean_password2(self):
        cd = self.cleaned_data
        if cd['password'] != cd['password2']:
            raise forms.ValidationError("两次输入密码不一致！")
        return cd['password2']

class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ("phone", "snumber")

class UserInfoForm(forms.ModelForm):
    class Meta:
        model = UserInfo
        fields = ("nick_name", "aboutme", "photo")

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ("email",)