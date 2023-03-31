from django.contrib import admin
from .models import ArticleColumn

import xadmin
class ArticleColumnAdmin(object):
    list_display = ('column', 'created', 'user')
    list_filter = ("column",)


xadmin.site.register(ArticleColumn, ArticleColumnAdmin)