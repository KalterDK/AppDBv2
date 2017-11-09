# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-11-09 15:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppDBv2', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='DataTable',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user', models.CharField(help_text='User', max_length=30)),
                ('action', models.CharField(help_text='Action Type', max_length=30)),
                ('time', models.CharField(help_text='Time', max_length=30)),
            ],
        ),
    ]