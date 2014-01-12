import os

os.environ['DJANGO_SETTINGS_MODULE'] = 'halffull.settings' 

from django.conf import settings
from quotes.models import Quote

import urllib
import requests
import time

langs = ['ar', 'ca', 'cs', 'da', 'de', 'el', 'en', 'es', 'fi', 'fr', 'he', 'hr', 'hu', 'it', 'ja', 'ko', 'nb', 'nl', 'pl', 'pt-PT', 'pt', 'ro', 'ru', 'sk', 'sv', 'th', 'tr', 'uk', 'zh-Hans', 'zh-Hant']

API_KEY = 'AIzaSyB0D69gAJlfMTuQgIe-CN1r9lTpjeTdQRM'
old_lang = ""

for q in Quote.objects.filter(lang='en'):
    for lang in langs:

        if lang == 'he':
            old_lang = lang
            lang = 'iw'
        elif lang == 'nb':
            old_lang = lang
            lang = 'no'
        elif lang == 'pt-PT':
            old_lang = lang
            lang = 'pt'
        elif lang == 'zh-Hans':
            old_lang = lang
            lang = 'zh-CH'
        else:
            old_lang = lang

        print lang
        print q.quote

        url = 'https://www.googleapis.com/language/translate/v2?key=%s&target=%s&q=%s'
        url2 = url % (API_KEY, old_lang, urllib.quote_plus(q.quote.encode('utf8')))

        resp = requests.get(url2)
        j = resp.json()

        try:
            print j['data']['translations'][0]['translatedText']

            quote = Quote()
            quote.mood = q.mood 
            quote.quote = j['data']['translations'][0]['translatedText']
            quote.attribution = q.attribution
            quote.lang = lang
            quote.save()

            q.translated_quotes.add(quote)
            q.save()

            time.sleep(1)
        except KeyError:
            print j
