# Generated by Django 3.2 on 2021-05-15 16:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('article', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='articlepost',
            name='article_tag',
            field=models.ManyToManyField(blank=True, related_name='article_tag', to='article.ArticleTag', verbose_name='文章标签'),
        ),
        migrations.AlterField(
            model_name='articlepost',
            name='body',
            field=models.TextField(verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='articlepost',
            name='column',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_column', to='article.articlecolumn', verbose_name='栏目'),
        ),
        migrations.AlterField(
            model_name='articlepost',
            name='title',
            field=models.CharField(max_length=200, verbose_name='标题'),
        ),
    ]