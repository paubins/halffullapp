import os

os.environ['DJANGO_SETTINGS_MODULE'] = 'halffull.settings' 

from django.conf import settings
from quotes.models import Quote


for q in Quote.objects.all(): #(lang='en'):
    if '&#39;' in q.quote:
        print q.quote
        q.quote = q.quote.replace('&#39;','\'')
        q.save()

