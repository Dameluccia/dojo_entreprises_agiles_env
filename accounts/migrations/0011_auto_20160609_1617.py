# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-06-09 14:17
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0010_auto_20160607_0930'),
    ]

    operations = [
        migrations.AlterField(
            model_name='myprofile',
            name='description',
            field=models.CharField(blank=True, max_length=39),
        ),
    ]
