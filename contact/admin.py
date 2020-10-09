from django.contrib import admin
from .models import Contact, ContactImages


@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    list_display = ['fullname', 'email', 'subject', 'status', 'created_date']
    list_display_links = ['created_date']
    list_editable = ['status']
    search_fields = ['fullname', 'email', 'subject']
    list_filter = ['status']

    class Meta:
        model = Contact


@admin.register(ContactImages)
class ContactImagesAdmin(admin.ModelAdmin):
    list_display = ['title', 'is_published', 'image']
    list_display_links = ['title']
    list_editable = ['is_published']

    class Meta:
        model = ContactImages



