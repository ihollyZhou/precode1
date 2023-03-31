from django.contrib import admin
from apps.course.models import Course, Lesson

import xadmin
class courseAdmin(object):
    list_display = ("user", "title", "overview", "student")
    list_filter = ("user", "title", "overview")
    search_fields = ("user", "title", "overview")
    raw_id_fields = ("user",)
    date_hierarchy = "created"
    ordering = ['user', 'title']

xadmin.site.register(Course, courseAdmin)

class lessonAdmin(object):
    list_display = ("title", "description", "attach", "created")
    list_filter = ("title", "description", "created")
    search_fields = ("title", "description", "attach")
    raw_id_fields = ("title",)
    date_hierarchy = "created"
    ordering = ['user', 'title']

xadmin.site.register(Lesson, lessonAdmin)
