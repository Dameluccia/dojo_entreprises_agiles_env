from django.contrib import admin

# Register your models here.
from models import Inscription, MyProfile

class InscriptionAdmin(admin.ModelAdmin):
    model = Inscription
    list_display=['id','nom','prenom','choice_event',]
    list_filter =['choice_event']

    def id(self, obj):
        return obj.user.id
        id.admin_order_field  = 'user'  #Allows column order sorting
        id.short_description = 'Id'
    def nom(self, obj):
        return obj.user.nom
        nom.admin_order_field  = 'user'  #Allows column order sorting
        nom.short_description = 'Nom'
    def prenom(self, obj):
        return obj.user.prenom
        prenom.admin_order_field  = 'user'  #Allows column order sorting
        prenom.short_description = 'Prenom'

admin.site.register(Inscription, InscriptionAdmin)
