from django.contrib import admin
from .models import Category, Product, Images


# Multiple Images Inline
class ProductImageInline(admin.TabularInline):
    model = Images
    extra = 3


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'category', 'is_published', 'sorting', 'created_date']
    list_display_links = ['created_date']
    list_editable = ['title', 'is_published', 'sorting']
    search_fields = ['title', 'category']
    list_filter = ['category', 'is_published']
    prepopulated_fields = {'slug': ('title',)}
    inlines = [ProductImageInline]

    class Meta:
        model = Product


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['title']
    list_display_links = ['title']

    class Meta:
        model = Category


@admin.register(Images)
class ImagesAdmin(admin.ModelAdmin):
    list_display = ['title', 'product', 'image']
    search_fields = ['title', 'product']
    list_filter = ['product']

    class Meta:
        model = Images
