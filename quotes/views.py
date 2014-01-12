from django.core import serializers
from django.http import HttpResponse
from django.utils import simplejson
from django.core.cache import cache

import models
import random

def quote(request, mood=None, lang=None, uuid=None):
    if 'zh' in lang:
        lang = 'zh-Hant'
    elif 'pt' in lang:
        lang = 'pt-PT'
    elif '-' in lang:
        try:
            lang = lang.split('-')[0]
        except IndexError:
            pass

    quotes = list(models.Quote.objects.filter(mood=mood, lang__iexact=lang))

    l = len(quotes)-1
    g = random.randint(0,l)
    random.shuffle(quotes)
    quote = quotes[g]

    return HttpResponse(serializers.serialize("json", [quote]), mimetype="application/json")

