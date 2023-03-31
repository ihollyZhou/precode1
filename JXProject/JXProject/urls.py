"""JXProject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView
import xadmin
from apps.article.views import SearchView

urlpatterns = [
    path('admin/', xadmin.site.urls),
    path('', TemplateView.as_view(template_name="home.html"), name='home'),
    path('home/', TemplateView.as_view(template_name="home.html"), name='home'),
    path('account/', include('apps.account.urls', namespace='account')),
    path('note/', include(('apps.notes.urls', 'note'), namespace='note')),
    path('article/', include(('apps.article.urls', 'article'), namespace='article')),
    path('course/', include('apps.course.urls', namespace='course')),
    path('test/', TemplateView.as_view(template_name="test/extest.html"), name='test'),
    path('calen/', TemplateView.as_view(template_name="calen.html"), name='calen'),

]
