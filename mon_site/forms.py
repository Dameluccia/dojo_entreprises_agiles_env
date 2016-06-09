
from django import forms
from django.utils.translation import ugettext_lazy as _
from userena.forms import SignupFormOnlyEmail
# from models import MyProfile

class SignupFormExtra(SignupFormOnlyEmail):
    prenom = forms.CharField(label=_(u'Prenom'),
                                 max_length=30,
                                 required=False)

    nom = forms.CharField(label=_(u'Nom'),
                                max_length=30,
                                required=False)
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
        """
        Override the save method to save the first and last name to the user
        field.

        """
        # First save the parent form and get the user.
        new_user = super(SignupFormExtra, self).save()

        # Get the profile, the `save` method above creates a profile for each
        # user because it calls the manager method `create_user`.
        # See: https://github.com/bread-and-pepper/django-userena/blob/master/userena/managers.py#L65
        user_profile = new_user.get_profile()
        
        user_profile.prenom = self.cleaned_data['prenom']
        user_profile.nom = self.cleaned_data['nom']
        user_profile.save()

        # Userena expects to get the new user from this form, so return the new
        # user.
        return new_user
