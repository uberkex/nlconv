from blog.models import Blog
from home.models import Setting
from product.models import Category, Product


def settings(request):
    setting = Setting.objects.get(pk=1)
    context = {
        'setting': setting
    }

    return context


def menu(request):
    # Products-Category
    categories = Category.objects.all()
    products = Product.objects.filter(is_published=True)

    context = {
        'kategoriler': categories,
        'ürünler': products,
    }
    return context


def footer_blog(request):
    blog = Blog.objects.filter(is_published=True).order_by('-created_date')[0:3]
    context = {
        'blog_footer': blog
    }

    return context
