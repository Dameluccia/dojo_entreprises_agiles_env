# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-05-26 12:19
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('vote_app', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='votecom',
            old_name='subject_VoteCom',
            new_name='subject',
        ),
        migrations.RenameField(
            model_name='votelog',
            old_name='subject_VoteLog',
            new_name='subject',
        ),
        migrations.RenameField(
            model_name='votetech',
            old_name='subject_VoteTech',
            new_name='subject',
        ),
    ]
