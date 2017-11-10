from django import forms
# from models import *


class DataTableForm (forms.Form):
    user = forms.CharField(widget=forms.TextInput())
    action = forms.CharField(widget=forms.TextInput())
    time = forms.CharField(widget=forms.TextInput())

    class Meta:
        fields = ['user', 'action', 'time']
