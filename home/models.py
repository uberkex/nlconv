from django.db import models


class Setting(models.Model):
    logo = models.ImageField(upload_to='settings/', help_text='Önerilen boyutlar: 222x108', verbose_name='Logo')
    favicon = models.ImageField(upload_to='settings/', help_text='favicon.ico 16x16', verbose_name='Favicon')
    title = models.CharField(max_length=200, verbose_name='Site Adı')
    keywords = models.TextField(verbose_name='Anahtar Kelimeler', help_text='Örn : keyword1, keyword2, keyword3, ..')
    description = models.TextField(verbose_name='Açıklama Metni', help_text='description')
    short_address = models.CharField(max_length=25, verbose_name='Kısa Adres', help_text='Semt, Şehir')
    long_address = models.TextField(verbose_name='Adres')
    phone = models.CharField(max_length=20, verbose_name='Telefon Numarası')
    email = models.EmailField(max_length=100, verbose_name='Email Adresi')
    facebook = models.URLField(default='https://www.facebook.com/')
    instagram = models.URLField(default='https://www.instagram.com/')
    twitter = models.URLField(default='https://www.twitter.com/')
    linked_in = models.URLField(default='https://tr.linkedin.com/')
    logo_footer = models.ImageField(upload_to='settings/', help_text='Önerilen boyutlar: 222x100',
                                    verbose_name='Footer Logo')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Ayar'
        verbose_name_plural = 'Ayarlar'


class Partner(models.Model):
    title = models.CharField(max_length=200, verbose_name='Partner Adı')
    image = models.ImageField(upload_to='partners/', help_text='Boyutlar : 390x73', verbose_name='Logo')
    sorting = models.IntegerField(verbose_name='Sıra')
    is_published = models.BooleanField(default=True, verbose_name='Yayımlama')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Partner'
        verbose_name_plural = 'Partnerler'
        ordering = ['sorting']

