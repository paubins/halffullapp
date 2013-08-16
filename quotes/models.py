from django.db import models

MOODS = (
    ('ANGRY', 'ANGRY'),
    ('IMPATIENT', 'IMPATIENT'),
    ('TIRED', 'TIRED'),
    ('LONELY', 'LONELY'),
    ('DEPRESSED', 'DEPRESSED'),
    ('GUILTY', 'GUILTY'),
    ('SAD', 'SAD'),
    ('NOSTALGIC', 'NOSTALGIC'),
    ('JEALOUS', 'JEALOUS'),
    ('DULL', 'DULL'),
    ('SCARED', 'SCARED'),
    ('ANXIOUS', 'ANXIOUS')
)

class Quote(models.Model):
    mood = models.CharField(max_length=15, choices=MOODS)
    quote = models.TextField()

