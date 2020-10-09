from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404, redirect, reverse
from .models import Blog


def blogList(request):
    blogs = Blog.objects.filter(is_published=True)

    paginator = Paginator(blogs, 2)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'blogs': page_obj,
    }

    return render(request, 'blog/blog_list.html', context)


def blogDetail(request, slug):
    blog = get_object_or_404(Blog, slug=slug)
    context = {
        'blog': blog,
    }

    return render(request, 'blog/blog_detail.html', context)
