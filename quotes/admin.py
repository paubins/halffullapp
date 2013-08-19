from django.contrib import admin

import models
import redis

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['mood', 'quote']

    def save_model(self, request, obj, form, change):
        pass 

admin.site.register(models.Quote, QuoteAdmin)
