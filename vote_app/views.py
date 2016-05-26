from django.shortcuts import render

from django.views.generic.list import ListView
from vote_app.models import SujetVote, SujetCategorie

class SujetVoteList(ListView):
    model = SujetVote
    template_name = "event_list.html"


    def get_context_data(self):
        context = super(SujetVoteList, self).get_context_data()
        context["categories"] = SujetCategorie.objects.all()
        return context
