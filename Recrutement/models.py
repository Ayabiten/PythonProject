from django.db import models

from django.contrib.auth.mixins import LoginRequiredMixin

class Candidat(models.Model):
    id_C = models.AutoField(primary_key=True)
    Nom = models.CharField(max_length=30)
    Prenom = models.CharField(max_length=30)
    Email = models.EmailField(max_length=30)
    password = models.CharField(max_length=30)
    Address = models.CharField(max_length=30)
    ville = models.CharField(max_length=30)
    def __str__(self):
        return self.Nom
class CV(models.Model):
    cv = models.CharField(max_length=50)
    candidat = models.ForeignKey(Candidat,on_delete=models.CASCADE)

class Recruteur(models.Model):
    id_R = models.AutoField(primary_key=True)
    Nom = models.CharField(max_length=30)
    Prenom = models.CharField(max_length=30)
    Email = models.EmailField(max_length=30)
    password = models.CharField(max_length=30)
    Address = models.CharField(max_length=30)
    ville = models.CharField(max_length=30)

class Contactus(models.Model):
    Nom = models.CharField(max_length=30)
    Prenom = models.CharField(max_length=30)
    Email = models.EmailField()
    Objet = models.CharField(max_length=30)
    Message = models.TextField()
    def __str__(self):
        return self.Objet
class OffreEmploi(models.Model):
    Domaine = models.CharField(max_length=300)
    Offre = models.TextField()
    DateI = models.DateField(null=True, blank=True)
    Recruteur = models.ForeignKey(Recruteur, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return self.Offre
