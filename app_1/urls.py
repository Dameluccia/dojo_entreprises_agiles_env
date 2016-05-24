from django.conf.urls import include, url
from django.views.generic import TemplateView

from views import homepage, discussions, portrait, savoirs, contact
from timelinejs.views import TimelineView














urlpatterns = [
    url(r'^$', homepage, name='homepage'),
    url(r'^blah$', discussions, name='discussions'),
    url(r'^(?P<pk>\d+)/$', TimelineView.as_view(), name='timelineview'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^portrait$', portrait, name='portrait'),
    url(r'^savoirs$', savoirs, name='savoirs'),
    url(r'^contact$', contact, name='contact'),
    url(r'^contact/merci$', TemplateView.as_view(template_name='contact_merci.html'))

]
