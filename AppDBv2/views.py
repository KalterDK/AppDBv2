from django.shortcuts import render, render_to_response
from .forms import *
from .models import *


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
    activity = OcActivity.objects.all()
    form = DataTableForm()
    return render_tamplate('index.html', {'act': activity, 'form': form}, request)


def data_list(request):
    users = OcActivity.objects.order_by('user')
    return render_to_response('index.html', {'users': users})
