# Generated by Django 3.2 on 2021-05-14 21:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='userinfo',
            options={'verbose_name': '用户详细信息', 'verbose_name_plural': '用户详细信息'},
        ),
        migrations.AlterModelOptions(
            name='userprofile',
            options={'verbose_name': '注册补充信息', 'verbose_name_plural': '注册补充信息'},
        ),
    ]
