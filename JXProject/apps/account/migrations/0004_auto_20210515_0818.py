# Generated by Django 3.2 on 2021-05-15 08:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0003_alter_userprofile_snumber'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userinfo',
            name='nick_name',
            field=models.CharField(blank=True, max_length=50, verbose_name='昵称'),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='phone',
            field=models.CharField(max_length=11, null=True, verbose_name='手机号码'),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='snumber',
            field=models.CharField(max_length=12, null=True, verbose_name='学工号'),
        ),
    ]
