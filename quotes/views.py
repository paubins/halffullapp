from django.core import serializers
from django.http import HttpResponse
from django.utils import simplejson

import models
import random
import redis

def quote(request, mood=None, lang=None, uuid=None):
    quotes = list(models.Quote.objects.filter(mood=mood, lang=lang))
    random.shuffle(quotes)

    try:
        quote = [quotes.pop()]
    except IndexError:
        quote = []

    return HttpResponse(serializers.serialize("json", quote), mimetype="application/json")

