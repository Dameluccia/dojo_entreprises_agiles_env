from django.conf.urls import *
from voting.views import vote_on_object
from .views import SujetVoteList
from .models import SujetVote

event_dict = {
'model': SujetVote,
'template_object_name': 'sujet',
'slug_field': 'id',
'allow_xmlhttprequest': True,
}

urlpatterns = [

    url(r'^$', SujetVoteList.as_view(), name='savoirs'),
    url(r'^vote/(?P<object_id>\d+)/(?P<direction>up|down|clear)vote/?$', vote_on_object, event_dict, name='vote-on-event'),

]
