from django.contrib import admin
from .models import Setting, Partner


@admin.register(Setting)
class SettingAdmin(admin.ModelAdmin):
    list_display = ['title', 'phone', 'email', 'short_address']
    list_display_links = ['title']
    list_editable = ['phone', 'email', 'short_address']

    class Meta:
        model = Setting


@admin.register(Partner)
class PartnerAdmin(admin.ModelAdmin):
    list_display = ['title', 'image', 'sorting', 'is_published']
    list_display_links = ['title']
    list_editable = ['sorting', 'is_published']

    class Meta:
        model = Partner
