from django.shortcuts import render
from django.http import HttpResponse
from .models import Candidat, Recruteur, OffreEmploi
# Create your views here.
def index(request):
    all_candidat = Candidat.objects.all()
    html = ''
    for candidat in all_candidat :
        url = '/ARV' + str(candidat.id_C) + '/'
        html += '<a href="' + url + '">' + candidat.Nom + '</a><br>'
    return HttpResponse(html)
   # offers = OffreEmploi.objects.all()
    #return render(request,'ARV/index.html', {'offers' : offers} )

#def show(request, id):
 #   cv = CV.objects.get(pk=id)
  #  return render(request, 'ARV/show.html', {'cv': cv})
def detail(request, Candidat_id) :
    return HttpResponse("<h2> Details for candidat id :" + str(Candidat_id_C) + "</h2>")