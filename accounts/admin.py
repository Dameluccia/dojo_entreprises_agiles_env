from django.contrib.gis import admin

# Register your models here.

from models import MyProfile


class ProfileAdmin(admin.OSMGeoAdmin):
    list_display=['id','nom','prenom','nom_activite','adresse_activite','description','website','contact_mail']

admin.site.unregister(MyProfile)
admin.site.register(MyProfile, ProfileAdmin)
