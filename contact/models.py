from django.db import models


# Create your models here.


class Contact(models.Model):
    STATUS = (
        ('Yeni', 'Yeni'),
        ('Okundu', 'Okundu'),
        ('Kapandı', 'Kapandı'),
    )
    fullname = models.CharField(max_length=250, verbose_name='Adı Soyadı')
    email = models.EmailField()
    subject = models.CharField(max_length=50, verbose_name='Konu')
    message = models.TextField(verbose_name='Mesaj')
    status = models.CharField(choices=STATUS, default='Yeni', max_length=10, verbose_name='Mesaj Durumu')
    note = models.CharField(blank=True, max_length=255, verbose_name='Yönetici Notu')
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma Tarihi')
    update_date = models.DateTimeField(auto_now=True, verbose_name='Son Güncellenme Tarihi')

    def __str__(self):
        return self.fullname

    class Meta:
        verbose_name = 'İletişim Mesajı'
        verbose_name_plural = 'İletişim Mesajları'
        ordering = ['created_date']


class ContactImages(models.Model):
    title = models.CharField(max_length=100, verbose_name='Resim Adı')
    image = models.ImageField(upload_to='contacts/', verbose_name='Ofis Resimleri',
                              help_text='Önerilen Boyutlar : 1170 x 450')
    is_published = models.BooleanField(default=True, verbose_name='Yayınlama')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Ofis Resim'
        verbose_name_plural = 'Ofis Resimleri'


