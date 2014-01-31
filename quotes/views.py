from django.core import serializers
from django.http import HttpResponse
from django.utils import simplejson
from django.core.cache import cache
from django.views.decorators.csrf import csrf_exempt

from itertools import chain

import models
import random

def translate_language(lang):
    if 'zh' in lang:
        lang = 'zh-Hant'
    elif 'pt' in lang:
        lang = 'pt-PT'
    elif '-' in lang:
        try:
            lang = lang.split('-')[0]
        except IndexError:
            pass
    return lang

def quote(request, mood=None, lang=None, uuid=None):
    lang = translate_language(lang)
    quotes = list(models.Quote.objects.filter(mood=mood, lang__iexact=lang))

    key = 'uuid-%s-%s-%s' % (uuid, mood, lang)
    l = cache.get(key)
    if not l:
        l = list(chain.from_iterable([random.sample(range(1,len(quotes)+1), len(quotes)) for _ in range(30)]))

    quote = quotes[l.pop()-1]
    cache.set(key, l)

    response = [quote]
    try:
        quote_like = models.Like.objects.get(quote_id=quote.pk, uuid=uuid)
        response.append(quote_like)
    except models.Like.DoesNotExist:
        pass

    return HttpResponse(serializers.serialize("json", response), mimetype="application/json")

@csrf_exempt
def like(request):
    if request.method == 'POST': 
        quote_id = request.POST.get('quote_id', None)
        uuid = request.POST.get('uuid', None)
        is_like = request.POST.get('like', False) == '1'

        print request.POST

        quote_like, created = models.Like.objects.get_or_create(quote_id=quote_id, uuid=uuid)

        if not is_like:
            quote_like.delete()


    return HttpResponse(serializers.serialize("json", []), mimetype="application/json")
