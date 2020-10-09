from django.urls import path

from . import views

app_name = "product"

urlpatterns = [
    path('', views.productList, name="product_list"),
    path('<slug:slug>/<int:id>/', views.productDetail, name="product_detail"),
]
