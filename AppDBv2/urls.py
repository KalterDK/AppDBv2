from django.conf.urls import url
from django.contrib import admin
from AppDBv2 import views

urlpatterns = [
    url(r'^$', views.page_1, name="page 1"),
    url(r'^page_2/', views.page_2, name="page 2"),
    url(r'^admin/', admin.site.urls),
]
