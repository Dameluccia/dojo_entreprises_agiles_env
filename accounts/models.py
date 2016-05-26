from __future__ import unicode_literals

from django.db import models
from django.dispatch import receiver
from django.contrib.gis.db.models import PointField, GeoManager
from geopy.geocoders import GoogleV3
from django.contrib.gis.geos import fromstr
from django.db.models.signals import pre_save
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
    website = models.URLField(max_length=200)
    contact_mail = models.EmailField(max_length=254, blank=True)

    gps = PointField(null=True, blank=True)
    objects = GeoManager()

    def __unicode__(self):
        return "%s %s %s %s %s %s %s" % (self.nom,self.prenom,self.nom_activite,self.adresse_activite,self.description,self.website,self.contact_mail)

@receiver(pre_save, sender=MyProfile)
def address_geocoding(sender,instance,**kwargs):
    geolocator = GoogleV3(api_key='AIzaSyD5xRfZ-oRSqtsfOo9Cpj-eRHT5V8BbfqA', domain='maps.googleapis.com', scheme='https', client_id=None, secret_key=None, timeout=1, proxies=None)
    location = geolocator.geocode("%s " % (instance.adresse_activite))
    # print(location.raw)
    instance.gps = fromstr('POINT(%s %s)' % (location.longitude, location.latitude))
