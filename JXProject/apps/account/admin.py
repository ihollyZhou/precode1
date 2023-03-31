from django.contrib import admin
from .models import UserProfile, UserInfo
import xadmin
from xadmin import views

class GlobalSettings(object):
    site_title = "教学辅助后台管理"
    site_footer = "山东大学"
    #menu_style = "accordion"

class BaseSettings(object):
    enable_themes = True
    use_bootswatch = True

xadmin.site.register(xadmin.views.CommAdminView, GlobalSettings)
xadmin.site.register(xadmin.views.BaseAdminView, BaseSettings)

class UserProfileAdmin(object):
    list_display = ('user', 'snumber',  'phone')
    list_filter = ("snumber", "phone",)

xadmin.site.register(UserProfile, UserProfileAdmin)


class UserInfoAdmin(object):
    list_display = ("user", 'nick_name', 'aboutme', 'photo')
    list_filter = ("nick_name", "aboutme", )

xadmin.site.register(UserInfo, UserInfoAdmin)