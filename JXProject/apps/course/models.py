from django.db import models
from django.contrib.auth.models import User
from slugify import slugify
from .fields import OrderField


class Course(models.Model):
    user = models.ForeignKey(User, verbose_name="教师", on_delete=models.CASCADE, related_name='courses_user')
    title = models.CharField(verbose_name="题目", max_length=200)
    slug = models.SlugField(max_length=200, unique=True)
    overview = models.TextField(verbose_name="简介",)
    created = models.DateTimeField(verbose_name="上传时间", auto_now_add=True)
    student = models.ManyToManyField(User, verbose_name="学生", related_name="courses_joined", blank=True)

    class Meta:
        ordering = ('-created',)
        verbose_name = "课程管理"
        verbose_name_plural = verbose_name

    def save(self, *args, **kargs):
        self.slug = slugify(self.title)
        super(Course, self).save(*args, **kargs)

    def __str__(self):
        return self.title



def user_directory_path(instance, filename):
    return "courses/user_{0}/{1}".format(instance.user.id, filename)


class Lesson(models.Model):
    user = models.ForeignKey(User, verbose_name="教师", on_delete=models.CASCADE, related_name='lesson_user')
    course = models.ForeignKey(Course, verbose_name="所属课程", on_delete=models.CASCADE, related_name='lesson')
    title = models.CharField(verbose_name="标题", max_length=200)
    video = models.FileField(verbose_name="视频", upload_to=user_directory_path)
    description = models.TextField(verbose_name="描述", blank=True)
    attach = models.FileField(verbose_name="附件", blank=True, upload_to=user_directory_path)
    created = models.DateTimeField(verbose_name="上传时间", auto_now_add=True)
    order = OrderField(verbose_name="排序", blank=True, for_fields=['course'])

    class Meta:
        ordering = ['order']
        verbose_name = "课程内容"
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{}.{}'.format(self.order, self.title)

