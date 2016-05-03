from django.conf.urls import include, url
from views import discussions, homepage
from timelinejs.views import TimelineView

urlpatterns = [
    url(r'^homepage$', homepage),
    url(r'^discussions$', discussions),
    url(r'^(?P<pk>\d+)/$', TimelineView.as_view(), name='timelineview'),
]
