from django.contrib import admin

from quotes import models

# from quotes.tasks import translate_quote
from django.contrib import messages

def translate_quote_action(modeladmin, request, queryset):
    for quote in queryset:
        translate_quote.delay(quote_id=quote.pk)

    messages.info(request, "Translation tasks have been initiated")

translate_quote_action.short_description = "Translate quote"

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['mood', 'quote']
    list_filter = ['lang','mood']
    actions = [translate_quote_action]

class LikeAdmin(admin.ModelAdmin):
    list_display = ['date_created', 'quote', 'uuid']

admin.site.register(models.Quote, QuoteAdmin)
admin.site.register(models.Like, LikeAdmin)
