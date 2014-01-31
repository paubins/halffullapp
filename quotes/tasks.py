from django.conf import settings
from quotes.models import Quote

from celery.task import task

import urllib
import requests
import time

langs = ['ar', 'ca', 'cs', 'da', 'de', 'el', 'en', 'es', 
        'fi', 'fr', 'he', 'hr', 'hu', 'it', 'ja', 'ko', 
        'nb', 'nl', 'pl', 'pt-PT', 'pt', 'ro', 'ru', 'sk', 
        'sv', 'th', 'tr', 'uk', 'zh-Hans', 'zh-Hant']

old_lang = ""

@task
def translate_quote(quote_id=None):
    try:
        q = Quote.objects.get(pk=quote_id)
    except Quote.DoesNotExist:
        return

    languages = [v['lang'] for v in q.translated_quotes.all().values('lang')]
    languages_to_process = set(langs) - set(languages)

    for lang in languages_to_process:
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

        url = 'https://www.googleapis.com/language/translate/v2?key=%s&target=%s&q=%s'
        url2 = url % (settings.TRANSLATE_API_KEY, old_lang, urllib.quote_plus(q.quote.encode('utf8')))

        resp = requests.get(url2)
        j = resp.json()

        try:
            quote, created = Quote.objects.get_or_create(mood=q.mood, 
                quote=j['data']['translations'][0]['translatedText'], 
                lang=lang)

            if created:
                q.translated_quotes.add(quote)
                q.save()

            time.sleep(1)
        except Exception:
            pass
