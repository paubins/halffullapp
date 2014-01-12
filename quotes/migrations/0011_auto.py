# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding M2M table for field translated_quotes on 'Quote'
        m2m_table_name = db.shorten_name(u'quotes_quote_translated_quotes')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('from_quote', models.ForeignKey(orm[u'quotes.quote'], null=False)),
            ('to_quote', models.ForeignKey(orm[u'quotes.quote'], null=False))
        ))
        db.create_unique(m2m_table_name, ['from_quote_id', 'to_quote_id'])


    def backwards(self, orm):
        # Removing M2M table for field translated_quotes on 'Quote'
        db.delete_table(db.shorten_name(u'quotes_quote_translated_quotes'))


    models = {
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'lang': ('django.db.models.fields.CharField', [], {'default': "'en'", 'max_length': '10', 'null': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {}),
            'translated_quotes': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'translated_quotes_rel_+'", 'to': u"orm['quotes.Quote']"})
        }
    }

    complete_apps = ['quotes']