# project/models.py

from django.db import models
from django.contrib.auth.models import User


class Role(models.Model):
    ROLE_CHOICES = (
        (0, '学生'),
        (1, '教师')
    )
    user = models.OneToOneField(User, related_name='role', on_delete=models.CASCADE)
    role = models.SmallIntegerField(choices=ROLE_CHOICES, default=0, verbose_name='角色')

    def __str__(self):
        return str(self.role)


'''
    定义一个抽象类，字段为各个表的公共字段，这个类并不会在数据库中建表
'''


class UserAbstractModel(models.Model):
    GENDER_CHOICES = (
        (0, '男'),
        (1, '女')
    )
    name = models.CharField('姓名', default='', max_length=50)
    gender = models.SmallIntegerField(choices=GENDER_CHOICES, default=0, verbose_name='性别')
    created = models.DateTimeField('创建时间', auto_now_add=True)
    modified = models.DateTimeField('最后更改时间', auto_now=True)
    description = models.TextField('个人描述', null=True)

    # photo = models.ImageField('用户头像',upload_to=user_directory_path,blank=True)

    class Meta:
        abstract = True


class Teacher(UserAbstractModel):
    user = models.OneToOneField(Role, related_name='teacher', on_delete=models.CASCADE)
    ranks = models.CharField(default='无', max_length=50, verbose_name='职称')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '教师表'
        verbose_name_plural = verbose_name


class Student(UserAbstractModel):
    user = models.OneToOneField(Role, related_name='student', on_delete=models.CASCADE)
    classes = models.CharField('班级', default='', max_length=50)

    def __str__(self):
        return self.user.user.username

    def get_course_count(self):
        return Course.objects.filter(student__id=self.id).count()

    class Meta:
        verbose_name = '学生表'
        verbose_name_plural = verbose_name