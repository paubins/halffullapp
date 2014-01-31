from django.contrib import admin

import models

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['mood', 'quote']
    list_filter = ['lang','mood']

class LikeAdmin(admin.ModelAdmin):
    list_display = ['date_created', 'quote', 'uuid']

admin.site.register(models.Quote, QuoteAdmin)
admin.site.register(models.Like, LikeAdmin)
