from django.shortcuts import render, render_to_response
from forms import *
from models import *


def render_tamplate(tpl, dt, request):
    """
    :param tpl: html template
    :param dt: dictionary to send
    :param request: HTTP request
    :return: HTML with base
    """
    dct = {}
    dct.update(dt)
    return render(request, tpl, dct)


def home(request):
    if request.method == "POST":
        form = DataTableForm(request.POST)
        if form.is_valid():
            u = form.cleaned_data['user']
            a = form.cleaned_data['action']
            t = form.cleaned_data['time']
            table = OcActivity.objects.filter(user=u, type=a, timestamp=t)
            return render_tamplate('index.html', {'form': form, 'table': table}, request)
        else:
            return render_tamplate('index.html', {'form': form}, request)
    else:
        form = DataTableForm()
        return render_tamplate('index.html', {'form': form}, request)

