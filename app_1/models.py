from __future__ import unicode_literals
from accounts.models import MyProfile
from timelinejs.models import TimelineEvent
from django.db import models

# Create your models here.
class Inscription(models.Model):
    user = models.ForeignKey(MyProfile)
    choice_event = models.ForeignKey(TimelineEvent)
