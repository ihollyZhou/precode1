from django.shortcuts import render, get_object_or_404
from .models import Note

def note_title(request):
    notes = Note.objects.all()
    return render(request, "notes/titles.html", {"notes": notes})

def note_article(request, article_id):
    #article = Note.objects.get(id=article_id)
    article = get_object_or_404(Note, id=article_id)
    time = article.publish
    return render(request, "notes/content.html", {"article": article, "time": time})


