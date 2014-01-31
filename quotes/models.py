from django.db import models
from django.conf.global_settings import LANGUAGES

MOODS = (
    ('angry', 'angry'),
    ('ugly', 'ugly'),
    ('broke', 'broke'),
    ('betrayed', 'betrayed'),
    ('impatient', 'impatient'),
    ('tired', 'tired'),
    ('lonely', 'lonely'),
    ('depressed', 'depressed'),
    ('guilty', 'guilty'),
    ('sad', 'sad'),
    ('nostalgic', 'nostalgic'),
    ('jealous', 'jealous'),
    ('dull', 'dull'),
    ('scared', 'scared'),
    ('anxious', 'anxious')
)

class Quote(models.Model):
    mood = models.CharField(max_length=15, choices=MOODS)
    quote = models.TextField()
    attribution = models.CharField(max_length=255)
    color = models.CharField(max_length=10, blank=True, null=True)
    lang = models.CharField(max_length=10, choices=LANGUAGES, null=True, default='en')
    translated_quotes = models.ManyToManyField('self', related_name='translation', symmetrical=False, blank=True, null=True, editable=False)

    def __unicode__(self):
        return "%s..." % self.quote[:25]

class Like(models.Model):
    date_created = models.DateTimeField(auto_now_add=True)
    quote = models.ForeignKey(Quote)
    uuid = models.CharField(max_length=255)

    class Meta:
        unique_together = ('uuid', 'quote')
