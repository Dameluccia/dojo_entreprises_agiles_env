from django.conf.urls import include, url
from views import discussions, homepage, portrait
from timelinejs.views import TimelineView

urlpatterns = [
    url(r'^homepage$', homepage, name='homepage'),
    url(r'^discussions$', discussions, name='discussions'),
    url(r'^(?P<pk>\d+)/$', TimelineView.as_view(), name='timelineview'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^portrait$',portrait, name="portrait")

]
