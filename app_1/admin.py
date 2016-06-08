from django.contrib import admin

# Register your models here.
from models import Inscription

class InscriptionAdmin(admin.ModelAdmin):
    list_display=['user','choice_event']


admin.site.register(Inscription, InscriptionAdmin)
