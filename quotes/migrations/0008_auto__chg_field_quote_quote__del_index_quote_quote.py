# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Renaming column for 'Quote.quote' to match new field type.
        db.rename_column(u'quotes_quote', 'quote_id', 'quote')
        # Changing field 'Quote.quote'
        db.alter_column(u'quotes_quote', 'quote', self.gf('django.db.models.fields.TextField')())
        # Removing index on 'Quote', fields ['quote']
        db.delete_index(u'quotes_quote', ['quote_id'])


    def backwards(self, orm):
        # Adding index on 'Quote', fields ['quote']
        db.create_index(u'quotes_quote', ['quote_id'])


        # Renaming column for 'Quote.quote' to match new field type.
        db.rename_column(u'quotes_quote', 'quote', 'quote_id')
        # Changing field 'Quote.quote'
        db.alter_column(u'quotes_quote', 'quote_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['quotes.Quote']))

    models = {
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'lang': ('django.db.models.fields.CharField', [], {'default': "'en'", 'max_length': '10', 'null': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['quotes']