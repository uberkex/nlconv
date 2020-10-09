from django.shortcuts import render, get_object_or_404

from .models import About, Information


def about_us(request):
    about = About.objects.get(pk=1)
    #about = get_object_or_404(About, pk=1)
    infos = Information.objects.filter(is_published=True)
    context = {
        'about': about,
        'infos': infos,
    }

    return render(request, 'about/about.html', context)
