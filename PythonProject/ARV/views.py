from django.shortcuts import render

from .models import Candidat, CV, Recruteur, OffreEmploi
# Create your views here.
def index(request):
    offers = OffreEmploi.objects.all()
    return render(request,'ARV/index.html', {'offers' : offers} )

def show(request, id):
    cv = CV.objects.get(pk=id)
    return render(request, 'ARV/show.html', {'cv': cv})