from django.shortcuts import render
from django.contrib.auth.views import login
from django.http import HttpResponseRedirect
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


def render_login(tpl, request):
    """
    :param tpl: html template
    :param request: HTTP request
    :return: HTML with base
    """
    return login(request, tpl)


def custom_login(request):
    if request.user.is_authenticated():
        return HttpResponseRedirect('/page_1')
    else:
        return render_login('login.html', request)


def page_1(request):
    if request.user.is_authenticated():
        if request.method == "POST":
            form = DataTableForm(request.POST)
            if form.is_valid():
                u = form.cleaned_data['user']
                a = form.cleaned_data['action']
                dtf_1 = form.cleaned_data['time_1']
                dtf_2 = form.cleaned_data['time_2']
                t_1 = int(dtf_1.strftime('%s'))
                t_2 = int(dtf_2.strftime('%s'))
                table = OcActivity.objects.filter(user=u, type=a, timestamp__range=[t_1, t_2])
                return render_tamplate('page_1.html', {'form': form, 'table': table}, request)
            else:
                return render_tamplate('page_1.html', {'form': form}, request)
        else:
            form = DataTableForm()
            return render_tamplate('page_1.html', {'form': form}, request)
    else:
        return render_login('login.html', request)


def page_2(request):
    if request.user.is_authenticated():
        if request.method == "POST":
            form = DataTableForm2(request.POST)
            if form.is_valid():
                f = form.cleaned_data['file']
                dtf_1 = form.cleaned_data['time_1']
                dtf_2 = form.cleaned_data['time_2']
                t_1 = int(dtf_1.strftime('%s'))
                t_2 = int(dtf_2.strftime('%s'))
                table = OcActivity.objects.filter(file=f, timestamp__range=[t_1, t_2])
                return render_tamplate('page_2.html', {'form': form, 'table': table}, request)
            else:
                return render_tamplate('page_2.html', {'form': form}, request)
        else:
            form = DataTableForm2()
            return render_tamplate('page_2.html', {'form': form}, request)
    else:
        return render_login('login.html', request)
