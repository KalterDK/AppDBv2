from django.conf.urls import url
from django.contrib import admin
from django.contrib.auth.views import login, logout
from AppDBv2 import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    url(r'^$', login, {'template_name': 'login.html'}),
    url(r'^page_1/', views.page_1, name="page 1"),
    url(r'^page_2/', views.page_2, name="page 2"),
    url(r'^admin/', admin.site.urls),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)