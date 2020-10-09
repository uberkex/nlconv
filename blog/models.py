from django.db import models
from ckeditor.fields import RichTextField


# Create your models here.

class Blog(models.Model):
    title = models.CharField(max_length=150, verbose_name='Haber Başlık')
    image = models.ImageField(upload_to='blogs/', help_text='Boyutlar: 1200x500', verbose_name='Blog Resmi')
    content = RichTextField(verbose_name='Haber İçerik')
    is_published = models.BooleanField(default=True)
    slug = models.SlugField(unique=True)
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma Tarihi')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Haber'
        verbose_name_plural = 'Haberler'
        ordering = ['created_date']
