from django import forms
from .models import *


class DataTableForm (forms.ModelForm):
    user = forms.ModelChoiceField(queryset=OcActivity.objects.all())

    class Meta:
        model = OcActivity
        fields = ['user']
