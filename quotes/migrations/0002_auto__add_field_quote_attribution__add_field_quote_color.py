# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Quote.attribution'
        db.add_column(u'quotes_quote', 'attribution',
                      self.gf('django.db.models.fields.CharField')(default=None, max_length=255),
                      keep_default=False)

        # Adding field 'Quote.color'
        db.add_column(u'quotes_quote', 'color',
                      self.gf('django.db.models.fields.CharField')(default=None, max_length=10),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Quote.attribution'
        db.delete_column(u'quotes_quote', 'attribution')

        # Deleting field 'Quote.color'
        db.delete_column(u'quotes_quote', 'color')


    models = {
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['quotes']