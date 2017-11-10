from django import forms
# from models import *


class DataTableForm (forms.Form):
    user = forms.CharField(widget=forms.TextInput())
    action = forms.CharField(widget=forms.TextInput())
    time_1 = forms.DateTimeField(widget=forms.DateTimeInput())
    time_2 = forms.DateTimeField(widget=forms.DateTimeInput())

    class Meta:
        fields = ['user', 'action', 'time_1', 'time_2']
