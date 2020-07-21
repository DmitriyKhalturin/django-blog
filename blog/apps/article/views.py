from django.views.generic import ListView, DetailView

from blog.apps.article.models import Article


class ArticleListView(ListView):
    model = Article
    context_object_name = 'articles'


class ArticleDetailView(DetailView):
    model = Article
    context_object_name = 'article'
