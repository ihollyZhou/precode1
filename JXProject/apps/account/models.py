from django.db import models
from django.contrib.auth.models import User


class UserProfile(models.Model):
    user = models.OneToOneField(User, verbose_name="用户", on_delete=models.CASCADE, unique=True)
    snumber = models.CharField(verbose_name="学工号", max_length=12, null=True)
    phone = models.CharField(verbose_name="手机号码", max_length=11, null=True)
    score = models.CharField(verbose_name="分数", max_length=4, null=True)

    class Meta:
        verbose_name = "注册补充信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return 'user {}'.format(self.user.username)


class UserInfo(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, unique=True, verbose_name="用户")
    nick_name = models.CharField(verbose_name="昵称", max_length=50, blank=True)
    aboutme = models.TextField(verbose_name="个人介绍", blank=True)
    photo = models.ImageField(verbose_name="头像", blank=True, max_length=2000)

    class Meta:
        verbose_name = "用户详细信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return "user:{}".format(self.user.username)