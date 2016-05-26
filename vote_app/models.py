from __future__ import unicode_literals

from django.db import models

# Create your models here.
class SujetCategorie(models.Model):
    nom = models.CharField(max_length=500)

    def __unicode__(self):
        return self.nom

class SujetVote(models.Model):
    categorie = models.ForeignKey(SujetCategorie, null=True)
    subject = models.CharField(max_length=500)
