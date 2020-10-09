from django.shortcuts import render, redirect
from .models import Contact, ContactImages
from .forms import ContactForm
from django.contrib import messages


def contact_page(request):
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, "Mesajınız Başarıyla Gönderildi")
            return redirect("contact:contact")
    else:
        form = ContactForm()
        office_images = ContactImages.objects.filter(is_published=True)
        context = {
            'form': form,
            'office_images': office_images,
        }
        return render(request, 'contact/contact.html', context)
