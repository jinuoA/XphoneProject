# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2017-07-24 08:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('xphone', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='navbars',
            name='NavImg',
            field=models.ImageField(blank=True, upload_to=b'uploads/'),
        ),
        migrations.AlterField(
            model_name='navbars',
            name='NavLog',
            field=models.ImageField(blank=True, upload_to=b'uploads/'),
        ),
    ]
