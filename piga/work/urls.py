# project/urls.py

from django.urls import re_path, path
from . import views

app_name = 'project'
urlpatterns = [

    # 登陆、注册 以及 信息、密码修改
    path('', views.index, name='index'),
    re_path(r'^register/$', views.register, name='register'),
    re_path(r'^login/$', views.login, name='login'),
    re_path(r'^user/(?P<pk>\d+)/profile/$', views.profile, name='profile'),
    re_path(r'^user/(?P<pk>\d+)/profile/update/$', views.profile_update, name='profile_update'),
    re_path(r'^user/(?P<pk>\d+)/pwdchange/$', views.pwd_change, name='pwd_change'),
    re_path(r'^logout/$', views.logout, name='logout'),

]