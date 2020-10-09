from django.shortcuts import render, get_object_or_404

from .models import Product, Category, Images


# Create your views here.


def productList(request):
    products = Product.objects.filter(is_published=True)
    categories = Category.objects.all()

    context = {
        'products': products,
        'categories': categories,

    }

    return render(request, 'product/product_list.html', context)


def productDetail(request, slug, id):
    product = get_object_or_404(Product, slug=slug)
    product_images = Images.objects.filter(product_id=id)

    context = {
        'product': product,
        'product_images': product_images,
    }

    return render(request, 'product/product_detail.html', context)
