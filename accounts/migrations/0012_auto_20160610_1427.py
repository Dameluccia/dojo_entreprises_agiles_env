# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-06-10 12:27
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0011_auto_20160609_1617'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='myprofile',
            name='nom',
        ),
        migrations.RemoveField(
            model_name='myprofile',
            name='prenom',
        ),
    ]