# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2017-07-28 08:34
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0006_arg_prob_product_desc'),
    ]

    operations = [
        migrations.AddField(
            model_name='arg',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='shop.ShopSales'),
        ),
        migrations.AddField(
            model_name='product_desc',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='shop.ShopSales'),
        ),
        migrations.AddField(
            model_name='product_details',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='shop.ShopSales'),
        ),
    ]