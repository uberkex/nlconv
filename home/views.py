from django.http import HttpResponseRedirect
from django.shortcuts import render
from about.models import About
from blog.models import Blog
from product.models import Category, Product
from .forms import SearchForm
from .models import Setting, Partner


def home(request):
    about_home = About.objects.get(pk=1)
    index_blog = Blog.objects.filter(is_published=True).order_by('-created_date')[0:2]
    partners = Partner.objects.filter(is_published=True)

    context = {
        'about_home': about_home,
        'index_blog': index_blog,
        'partners': partners,

    }

    return render(request, 'index.html', context)


def product_search(request):
    if request.method == 'POST':
        form = SearchForm(request.POST)
        if form.is_valid():
            category = Category.objects.all()
            query = form.cleaned_data['query']
            products = Product.objects.filter(title__icontains=query)
            context = {
                'products': products,
                'category': category,
                'query': query,
            }

            return render(request, 'product/product_search.html', context)

    return HttpResponseRedirect('/')
