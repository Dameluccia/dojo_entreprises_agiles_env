from django.conf.urls import include, url
from views import discussions, homepage
from timelinejs.views import TimelineView

urlpatterns = [
    url(r'^homepage$', homepage, name='homepage'),
    url(r'^discussions$', discussions, name='discussions'),
    url(r'^(?P<pk>\d+)/$', TimelineView.as_view(), name='timelineview'),
]
