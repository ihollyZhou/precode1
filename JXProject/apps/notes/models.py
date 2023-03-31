from django.db import models

from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

class Note(models.Model):
    title = models.CharField(verbose_name="通知名", max_length=300)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='note_posts', verbose_name="编辑")
    body = models.TextField(verbose_name="通知详情", default="")
    publish = models.DateTimeField(verbose_name="上传时间", default=timezone.now)

    class Meta:
        verbose_name = "通知信息"
        verbose_name_plural = verbose_name
        ordering = ('-publish',)


    def __str__(self):
        return self.title
