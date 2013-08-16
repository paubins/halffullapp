# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'Quote.color'
        db.alter_column(u'quotes_quote', 'color', self.gf('django.db.models.fields.CharField')(max_length=10, null=True))

    def backwards(self, orm):

        # Changing field 'Quote.color'
        db.alter_column(u'quotes_quote', 'color', self.gf('django.db.models.fields.CharField')(default=None, max_length=10))

    models = {
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['quotes']