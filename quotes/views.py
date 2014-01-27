from django.core import serializers
from django.http import HttpResponse
from django.utils import simplejson
from django.core.cache import cache
from itertools import chain

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

    key = 'uuid-%s-%s-%s' % (uuid, mood, lang)
    l = cache.get(key)
    if not l:
        l = list(chain.from_iterable([random.sample(range(1,len(quotes)+1), len(quotes)) for _ in range(30)]))

    quote = quotes[l.pop()-1]
    cache.set(key, l)

    return HttpResponse(serializers.serialize("json", [quote]), mimetype="application/json")

