from django.urls import path

from django.contrib import admin
from quotes.views import quote, like

from django.conf.urls.static import static

from django.conf import settings

admin.autodiscover()

urlpatterns = [
    path(r'^quote/(?P<mood>\w+)/(?P<lang>[\w\-]+)/(?P<uuid>[\w\-]+)/', quote, name='get_quote'),
    path(r'^like/', like, name='like'),

    # path(r'^admin/', include(admin.site.urls)),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
