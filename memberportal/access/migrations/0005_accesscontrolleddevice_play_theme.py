# Generated by Django 2.0.9 on 2018-12-03 14:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('access', '0004_accesscontrolleddevice_locked_out'),
    ]

    operations = [
        migrations.AddField(
            model_name='accesscontrolleddevice',
            name='play_theme',
            field=models.BooleanField(default=False, verbose_name='Play theme on door swipe'),
        ),
    ]