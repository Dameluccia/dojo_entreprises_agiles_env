# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-05-25 09:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0006_auto_20160525_1146'),
    ]

    operations = [
        migrations.AlterField(
            model_name='myprofile',
            name='contact_mail',
            field=models.EmailField(max_length=254),
        ),
        migrations.AlterField(
            model_name='myprofile',
            name='website',
            field=models.URLField(),
        ),
    ]
