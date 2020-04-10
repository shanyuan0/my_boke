from django.db import models
from django.contrib.auth.models import AbstractUser
from DjangoUeditor.models import UEditorField
# Create your models here.

class BokeUser(AbstractUser):
    phone = models.CharField(verbose_name='手机号',max_length=11)

class BaseModel(models.Model):
    is_delete = models.BooleanField(verbose_name='是否删除', default=False)
    created_time = models.DateTimeField(verbose_name='创建时间', auto_now_add=True)
    update_time = models.DateTimeField(verbose_name='更新时间', auto_now_add=True)

    class Meta:
        abstract = True


class Banner(BaseModel):
    title = models.CharField(verbose_name='标题',max_length=10)
    cover = models.ImageField(verbose_name='图片',upload_to='banner/%Y/%m/%d')

    link = models.URLField(verbose_name='跳转地址')
    position = models.IntegerField(verbose_name='排序',default=0)

    def __str__(self):
        return self.title

    class Meta:
        ordering = ['position']
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name



class Category(BaseModel):
    name = models.CharField(verbose_name='标题',max_length=10)
    position = models.IntegerField(verbose_name='排序', default=0)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['position']
        verbose_name = '分类'
        verbose_name_plural = verbose_name


class Tag(BaseModel):
    name = models.CharField(verbose_name='标题',max_length=10)
    position = models.IntegerField(verbose_name='排序', default=0)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['position']
        verbose_name = '标签'
        verbose_name_plural = verbose_name

class Article(BaseModel):
    title = models.CharField(verbose_name='标题', max_length=100)
    intro = models.CharField(verbose_name='简介',max_length=255)
    vnum = models.IntegerField(verbose_name='浏览量',default=0)
    cover = models.ImageField(verbose_name='图片', upload_to='article/%Y/%m/%d')
    is_top = models.BooleanField(verbose_name='是否置顶',default=False)

    content = UEditorField(width=600, height=300, toolbars="full",
                           imagePath="article/content/%(basename)s_%(datetime)s.%(extname)s", filePath="files/")
    user = models.ForeignKey(to=BokeUser,on_delete=models.CASCADE)
    category = models.ForeignKey(to=Category,on_delete=models.CASCADE)
    tag = models.ManyToManyField(to=Tag)

    def __str__(self):
        return self.title

    class Meta:
        ordering = ['created_time']
        verbose_name = '文章'
        verbose_name_plural = verbose_name



class FriendLink(BaseModel):
    name = models.CharField(verbose_name='友情链接',max_length=255)
    link = models.URLField(verbose_name='跳转地址')
    position = models.IntegerField(verbose_name='排序', default=0)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['position']
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name

class Comment(BaseModel):
    content = models.CharField(verbose_name='评论内容',max_length=255)
    user = models.ForeignKey(to=BokeUser,on_delete=models.CASCADE)
    article = models.ForeignKey(to=Article,on_delete=models.CASCADE)

    def __str__(self):
        return self.content

    class Meta:
        ordering = ['-created_time']
        verbose_name = '评论'
        verbose_name_plural = verbose_name