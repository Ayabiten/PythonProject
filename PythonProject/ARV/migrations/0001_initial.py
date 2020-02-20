# Generated by Django 3.0.3 on 2020-02-19 19:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Candidat',
            fields=[
                ('id_C', models.AutoField(primary_key=True, serialize=False)),
                ('Nom', models.CharField(max_length=30)),
                ('Prenom', models.CharField(max_length=30)),
                ('Email', models.EmailField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Recruteur',
            fields=[
                ('id_R', models.AutoField(primary_key=True, serialize=False)),
                ('Nom', models.CharField(max_length=30)),
                ('Entreprise', models.CharField(max_length=300)),
            ],
        ),
        migrations.CreateModel(
            name='OffreEmploi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Domaine', models.CharField(max_length=300)),
                ('Offre', models.TextField()),
                ('DateI', models.DateField(blank=True, null=True)),
                ('Recruteur', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='ARV.Recruteur')),
            ],
        ),
        migrations.CreateModel(
            name='CV',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cv', models.TextField()),
                ('candidat', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ARV.Candidat')),
            ],
        ),
    ]
