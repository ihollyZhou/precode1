from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.urls import reverse
from slugify import slugify


class ArticleColumn(models.Model):
    user = models.ForeignKey(User, verbose_name="发布者", on_delete=models.CASCADE, related_name='article_column')
    column = models.CharField(verbose_name="栏目",max_length=200)
    created = models.DateField(verbose_name="上传时间", auto_now_add=True)

    class Meta:
        verbose_name = "文章栏目"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.column


class ArticleTag(models.Model):
    author = models.ForeignKey(User, verbose_name="发布者", on_delete=models.CASCADE, related_name="tag")
    tag = models.CharField(verbose_name="标签",max_length=500)

    def __str__(self):
        return self.tag


class ArticlePost(models.Model):
    author = models.ForeignKey(User, verbose_name="发布者", on_delete=models.CASCADE, related_name="article")
    title = models.CharField(verbose_name="标题", max_length=200)
    slug = models.SlugField(verbose_name="转换", max_length=500)
    column = models.ForeignKey(ArticleColumn, verbose_name="栏目", on_delete=models.CASCADE, related_name="article_column")
    body = models.TextField(verbose_name="内容",)
    created = models.DateTimeField(verbose_name="创建时间", default=timezone.now)
    updated = models.DateTimeField(verbose_name="更新时间", auto_now=True)
    users_like = models.ManyToManyField(User, verbose_name="点赞", related_name="articles_like", blank=True)
    article_tag = models.ManyToManyField(ArticleTag, verbose_name="文章标签",related_name='article_tag', blank=True)

    class Meta:
        ordering = ("-updated",)
        index_together = (('id', 'slug'),)

    def __str__(self):
        return self.title

    def save(self, *args, **kargs):
        self.slug = slugify(self.title)
        super(ArticlePost, self).save(*args, **kargs)

    def get_absolute_url(self):
        return reverse("article:article_detail", args=[self.id, self.slug])

    def get_url_path(self):
        return reverse("article:article_content", args=[self.id, self.slug])

#评论
class Comment(models.Model):
    article = models.ForeignKey(ArticlePost, verbose_name="文章", on_delete=models.CASCADE, related_name="comments")
    commentator = models.CharField(verbose_name="评论者", max_length=90)
    body = models.TextField(verbose_name="内容" )
    created = models.DateTimeField(verbose_name="时间", auto_now_add=True)

    class Meta:
        ordering = ('-created',)

    def __str__(self):
        return "Comment by {0} on {1}".format(self.commentator.username, self.article)

