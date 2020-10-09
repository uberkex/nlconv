from django.contrib import admin
from .models import Blog


@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    list_display = ['title', 'is_published', 'created_date']
    list_display_links = ['created_date']
    list_editable = ['title', 'is_published']
    search_fields = ['title']
    list_filter = ['is_published']
    prepopulated_fields = {'slug': ('title',)}

    class Meta:
        model = Blog
