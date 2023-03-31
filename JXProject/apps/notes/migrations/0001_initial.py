# Generated by Django 3.2 on 2021-05-14 12:19

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Note',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=300, verbose_name='资讯名')),
                ('body', models.TextField(default='', verbose_name='资讯详情')),
                ('publish', models.DateTimeField(default=django.utils.timezone.now)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='note_posts', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': '资讯信息',
                'verbose_name_plural': '资讯信息',
                'ordering': ('-publish',),
            },
        ),
    ]