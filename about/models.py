from django.db import models
from ckeditor.fields import RichTextField


class About(models.Model):
    title = models.CharField(max_length=50, verbose_name='Hakkımızda Başlık')
    short_description = models.TextField(verbose_name='Anasayfa Hakkımızda',
                                         help_text='Bu metin sadece anasayfada gözükür')
    content = RichTextField(verbose_name='Hakkımızda Metni')
    image_1 = models.ImageField(upload_to='abouts/', help_text='Önerilen boyutlar: 164x148', verbose_name='Resim 1')
    image_2 = models.ImageField(upload_to='abouts/', help_text='Önerilen boyutlar: 212x186', verbose_name='Resim 2')
    image_3 = models.ImageField(upload_to='abouts/', help_text='Önerilen boyutlar: 318x288', verbose_name='Resim 3')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Hakkımızda'
        verbose_name_plural = 'Hakkımızda'


class Information(models.Model):
    title = models.CharField(max_length=50, verbose_name='Başlık', help_text='BüYÜK HARFLE YAZIN')
    description = models.CharField(max_length=145, verbose_name='Açıklama', help_text='Maximum 145 karakter')
    is_published = models.BooleanField(default=True)
    sorting = models.IntegerField(verbose_name='Sıralama')
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma Tarihi')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Bilgi'
        verbose_name_plural = 'Bilgiler'
        ordering = ['sorting']
