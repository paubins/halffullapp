# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Quote.translated_quote'
        db.add_column(u'quotes_quote', 'translated_quote',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=None, related_name='translation', to=orm['quotes.Quote']),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Quote.translated_quote'
        db.delete_column(u'quotes_quote', 'translated_quote_id')


    models = {
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'lang': ('django.db.models.fields.CharField', [], {'default': "'en'", 'max_length': '10', 'null': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {}),
            'translated_quote': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'translation'", 'to': u"orm['quotes.Quote']"})
        }
    }

    complete_apps = ['quotes']