from django.db import models
from ckeditor.fields import RichTextField


# Create your models here.


class Category(models.Model):
    title = models.CharField(max_length=50, verbose_name='Kategori Adı')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Kategori'
        verbose_name_plural = 'Kategoriler'
        ordering = ['title']


class Product(models.Model):
    title = models.CharField(max_length=100, verbose_name='Ürün Adı')
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='category_p',verbose_name='Kategori')
    image = models.ImageField(upload_to='products/', help_text='Boyut = 1170x540',verbose_name='Kapak Resmi')
    description = RichTextField(verbose_name='Açıklama')
    youtube_link = models.CharField(max_length=250, null=True, blank=True,verbose_name='Youtube Link')
    is_published = models.BooleanField(default=True,verbose_name='Yayınla')
    sorting = models.IntegerField(verbose_name='Sıralama')
    slug = models.SlugField(unique=True)
    created_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Ürün'
        verbose_name_plural = 'Ürünler'
        ordering = ['sorting']


class Images(models.Model):
    title = models.CharField(max_length=100, verbose_name='Resim Adı')
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='product_img', verbose_name='Ürün')
    image = models.ImageField(upload_to='products/', verbose_name='Resim', null=True, blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Resim'
        verbose_name_plural = 'Resimler'