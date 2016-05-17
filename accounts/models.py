from __future__ import unicode_literals

from django.db import models

from django.contrib.gis.db.models import PointField, GeoManager

from django.contrib.auth.models import User
from django.utils.translation import ugettext as _
from userena.models import UserenaBaseProfile

class MyProfile(UserenaBaseProfile):
    user = models.OneToOneField(User,
                                unique=True,
                                verbose_name=_('user'),
                                related_name='my_profile') #null=True

    nom = models.CharField(max_length=50)
    prenom = models.CharField(max_length=50)
    nom_activite = models.CharField(max_length=50)
    adresse_activite = models.CharField(max_length=100)
    description = models.CharField(max_length=200)
    website = models.CharField( max_length=50)
    contact_mail = models.CharField(max_length=50)

    gps = PointField(null=True)
    objects = GeoManager()

    def __unicode__(self):
        return "%s %s %s %s %s %s %s" % (self.nom,self.prenom,self.nom_activite,self.adresse_activite,self.description,self.website,self.contact_mail)
