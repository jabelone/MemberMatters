# Generated by Django 2.0 on 2018-08-28 12:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('access', '0004_auto_20180804_1134'),
    ]

    operations = [
        migrations.CreateModel(
            name='SpacebucksDevice',
            fields=[
                ('accesscontrolleddevice_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='access.AccessControlledDevice')),
            ],
            bases=('access.accesscontrolleddevice',),
        ),
    ]