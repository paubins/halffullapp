import os

os.environ['DJANGO_SETTINGS_MODULE'] = 'halffull.settings' 

from django.conf import settings
from quotes.models import Quote


for lang in Quote.objects.all().values('lang').distinct():
    print lang
