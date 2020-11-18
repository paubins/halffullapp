from django.urls import path

from django.contrib import admin
from quotes.views import quote, like
from .views import home

from django.conf.urls.static import static

from django.conf import settings

admin.autodiscover()

urlpatterns = [
    path(r'', home, name='home'),
    path(r'quote/<mood>/<slug:lang>/<slug:uuid>/', quote, name='get_quote'),
    path(r'like/', like, name='like'),

    # path(r'^admin/', include(admin.site.urls)),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
