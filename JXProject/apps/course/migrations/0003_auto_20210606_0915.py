# Generated by Django 3.2 on 2021-06-06 09:15

import apps.course.fields
import apps.course.models
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('course', '0002_auto_20210515_2257'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='course',
            options={'ordering': ('-created',), 'verbose_name': '课程管理', 'verbose_name_plural': '课程管理'},
        ),
        migrations.AlterModelOptions(
            name='lesson',
            options={'ordering': ['order'], 'verbose_name': '课程内容', 'verbose_name_plural': '课程内容'},
        ),
        migrations.AlterField(
            model_name='course',
            name='created',
            field=models.DateTimeField(auto_now_add=True, verbose_name='上传时间'),
        ),
        migrations.AlterField(
            model_name='course',
            name='student',
            field=models.ManyToManyField(blank=True, related_name='courses_joined', to=settings.AUTH_USER_MODEL, verbose_name='学生'),
        ),
        migrations.AlterField(
            model_name='course',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='courses_user', to=settings.AUTH_USER_MODEL, verbose_name='教师'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='attach',
            field=models.FileField(blank=True, upload_to=apps.course.models.user_directory_path, verbose_name='附件'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='course',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='lesson', to='course.course', verbose_name='所属课程'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='created',
            field=models.DateTimeField(auto_now_add=True, verbose_name='上传时间'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='description',
            field=models.TextField(blank=True, verbose_name='描述'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='order',
            field=apps.course.fields.OrderField(blank=True, verbose_name='排序'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='title',
            field=models.CharField(max_length=200, verbose_name='标题'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='lesson_user', to=settings.AUTH_USER_MODEL, verbose_name='教师'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='video',
            field=models.FileField(upload_to=apps.course.models.user_directory_path, verbose_name='视频'),
        ),
    ]
