from django.conf.urls import url
from django.contrib import admin
from AppDBv2 import views
from django.contrib.auth import views as auth_views
from views import custom_login

urlpatterns = [
    url(r'^$', custom_login, name='login'),
    url(r'^logout$', auth_views.logout, {'next_page': '/'}, name='logout'),
    url(r'^page_1$', views.page_1, name="page 1"),
    url(r'^page_2$', views.page_2, name="page 2"),
    url(r'^admin/', admin.site.urls),
]
