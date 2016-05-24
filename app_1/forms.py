from django import forms

class ContactForm(forms.Form):
    full_name = forms.CharField(required=True, label='Nom', max_length=100)
    email = forms.EmailField(required=True, label='Courriel', max_length=100)
    subject = forms.CharField(required=True, label='Sujet', max_length=100)
    message = forms.CharField(required=True, widget=forms.Textarea)
