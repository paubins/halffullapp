from django.contrib import admin

import models

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['mood', 'quote']

admin.site.register(models.Quote, QuoteAdmin)
