from django.contrib import admin
from apps.notes.models import Note

import xadmin
class NoteAdmin(object):
    list_display = ("title", "author", "publish")
    list_filter = ("publish", "author")
    search_fields = ("title", "body")
    raw_id_fields = ("author",)
    date_hierarchy = "publish"
    ordering = ['-publish', 'author']

xadmin.site.register(Note, NoteAdmin)
