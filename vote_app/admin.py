
from django.contrib import admin

# Register your models here.
from vote_app.models import  SujetVote, SujetCategorie

class SujetCategorieAdmin(admin.ModelAdmin):
    list_display=['id','nom']

class SujetVoteAdmin(admin.ModelAdmin):
    list_filter = ('categorie',)
    list_display=['id','subject', 'categorie']




admin.site.register(SujetCategorie, SujetCategorieAdmin)
admin.site.register(SujetVote, SujetVoteAdmin)
