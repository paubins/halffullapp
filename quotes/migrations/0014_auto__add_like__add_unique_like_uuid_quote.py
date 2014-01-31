# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Like'
        db.create_table(u'quotes_like', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('date_created', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('quote', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['quotes.Quote'])),
            ('uuid', self.gf('django.db.models.fields.CharField')(max_length=255)),
        ))
        db.send_create_signal(u'quotes', ['Like'])

        # Adding unique constraint on 'Like', fields ['uuid', 'quote']
        db.create_unique(u'quotes_like', ['uuid', 'quote_id'])


    def backwards(self, orm):
        # Removing unique constraint on 'Like', fields ['uuid', 'quote']
        db.delete_unique(u'quotes_like', ['uuid', 'quote_id'])

        # Deleting model 'Like'
        db.delete_table(u'quotes_like')


    models = {
        u'quotes.like': {
            'Meta': {'unique_together': "(('uuid', 'quote'),)", 'object_name': 'Like'},
            'date_created': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'quote': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['quotes.Quote']"}),
            'uuid': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        u'quotes.quote': {
            'Meta': {'object_name': 'Quote'},
            'attribution': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'color': ('django.db.models.fields.CharField', [], {'max_length': '10', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'lang': ('django.db.models.fields.CharField', [], {'default': "'en'", 'max_length': '10', 'null': 'True'}),
            'mood': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'quote': ('django.db.models.fields.TextField', [], {}),
            'translated_quotes': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'related_name': "'translation'", 'null': 'True', 'symmetrical': 'False', 'to': u"orm['quotes.Quote']"})
        }
    }

    complete_apps = ['quotes']