
from django import forms
from django.utils.translation import ugettext_lazy as _
from userena.forms import SignupFormOnlyEmail
# from models import MyProfile

class SignupFormExtra(SignupFormOnlyEmail):
    nom = forms.CharField(label=_(u'Nom'),
                                    max_length=50)
    prenom = forms.CharField(label=_(u'Prenom'),
                                    max_length=50)
    nomActivite = forms.CharField(label=_(u'Activite'),
                                    max_length=50)
    adresseActivite = forms.CharField(label=_(u'Adresse activite'),
                                    max_length=100)
    description = forms.CharField(label=_(u'Description'),
                                    max_length=200,
                                    widget = forms.Textarea)
    website = forms.CharField(label=_(u'Site internet'),
                                    max_length=50,
                                    required=False)


    def save(self):
        new_user = super(SignupFormExtra, self).save()
        new_user.first_name = self.cleaned_data['nom']
        new_user.last_name = self.cleaned_data['prenom']
        new_user.save()
        
        user_profile = new_user.my_profile
        user_profile.nom_activite = self.cleaned_data['nomActivite']
        user_profile.adresse_activite = self.cleaned_data['adresseActivite']
        user_profile.description = self.cleaned_data['description']
        user_profile.website = self.cleaned_data['website']
        user_profile.save()

        # Userena expects to get the new user from this form, so return the new
        # user.
        return new_user
