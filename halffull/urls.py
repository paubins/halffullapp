from django.conf.urls import patterns, include, url

from django.contrib import admin
from quotes.views import quote, like

from django.conf.urls.static import static

from django.conf import settings

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', 'halffull.views.home', name='home'),
    url(r'^quote/(?P<mood>\w+)/(?P<lang>[\w\-]+)/(?P<uuid>[\w\-]+)/', quote, name='get_quote'),
    url(r'^like/', like, name='like'),

    url(r'^admin/', include(admin.site.urls)),
) + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
