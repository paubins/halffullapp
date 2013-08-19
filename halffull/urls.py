from django.conf.urls import patterns, include, url

from django.contrib import admin
from quotes.views import quote

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', 'halffull.views.home', name='home'),
    url(r'^quote/(?P<mood>\w+)/(?P<lang>\w+)/(?P<uuid>[\w\-]+)/', quote, name='get_quote'),

    url(r'^admin/', include(admin.site.urls)),
)
