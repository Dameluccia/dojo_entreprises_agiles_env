from django.conf.urls import include, url
from views import discussions, homepage, portrait
from timelinejs.views import TimelineView





from django.conf.urls import *
from voting.views import vote_on_object
from timelinejs.models import TimelineEvent

event_dict = {
'model': TimelineEvent,
'template_object_name': 'event',
'slug_field': 'slug',
'allow_xmlhttprequest': 'true',
}

urlpatterns = [
    url(r'^$', homepage, name='homepage'),
    url(r'^blah$', discussions, name='discussions'),
    url(r'^(?P<pk>\d+)/$', TimelineView.as_view(), name='timelineview'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^portrait$',portrait, name="portrait"),



    url(r'^event/(?P<object_id>\d+)/(?P<direction>up|down|clear)vote/?$', vote_on_object, event_dict),
]
