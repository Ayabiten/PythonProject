from django.db import models

class Candidat(models.Model):
    id_C = models.AutoField(primary_key=True)
    Nom = models.CharField(max_length=30)
    Prenom = models.CharField(max_length=30)
    Email = models.EmailField(max_length=30)

class CV(models.Model):
    cv = models.TextField()
    candidat = models.ForeignKey(Candidat,on_delete=models.CASCADE)

class Recruteur(models.Model):
    id_R = models.AutoField(primary_key=True)
    Nom = models.CharField(max_length=30)
    Entreprise = models.CharField(max_length=300)

class OffreEmploi(models.Model):
    Domaine = models.CharField(max_length=300)
    Offre = models.TextField()
    DateI = models.DateField(null=True, blank=True)
    Recruteur = models.ForeignKey(Recruteur, on_delete=models.CASCADE, default=None, blank=True, null=True)

def __str__(self):
    return self.Nom
