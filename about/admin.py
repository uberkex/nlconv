from django.contrib import admin
from .models import About, Information


# Register your models here.


@admin.register(About)
class AboutAdmin(admin.ModelAdmin):
    list_display = ['title']

    class Meta:
        model = About


@admin.register(Information)
class InformationUsAdmin(admin.ModelAdmin):
    list_display = ['title', 'is_published', 'sorting', 'created_date']
    list_display_links = ['created_date']
    list_editable = ['title', 'is_published', 'sorting']
    list_filter = ['is_published']
    search_fields = ['title']

    class Meta:
        model = Information
