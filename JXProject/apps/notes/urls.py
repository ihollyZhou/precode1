from django.urls import path
from . import views

app_name = "note"

urlpatterns = [
    path("", views.note_title, name='note_title'),
    #path('<int:article_id>/', views.blog_article),
    path('<int:article_id>/', views.note_article, name='note_article'),
]