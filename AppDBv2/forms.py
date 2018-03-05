from django import forms
from models import *


class DataTableForm (forms.Form):
    user = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    action = forms.ModelChoiceField(queryset=Actions.objects.all())
    time_1 = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'class': 'form-control'}))
    time_2 = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'class': 'form-control'}))

    class Meta:
        fields = ['user', 'action', 'time_1', 'time_2']


class DataTableForm2 (forms.Form):
    file = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    time_1 = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'class': 'form-control'}))
    time_2 = forms.DateTimeField(widget=forms.DateTimeInput(attrs={'class': 'form-control'}))

    class Meta:
        fields = ['user', 'action', 'time_1', 'time_2']