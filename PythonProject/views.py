from django.shortcuts import render
from django.contrib.auth import authenticate , login , logout
from django.contrib.auth.forms import UserCreationForm
from Recrutement.models import *

#def login(request):
    #return render(request, 'login.html')

def Signup(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        Nom = request.POST.get('Nom')
        Prenom = request.POST.get('Prenom')
        Email = request.POST.get('email')
        password = request.POST.get('password')
        address = request.POST.get('address')
        ville = request.POST.get('ville')
        m = Candidat(Username=username,NomPrenom=Nom,Email=Email,password=password,Address=address
,ville=ville)
        m.save()
        return render(request, 'index1.html')
    else:
        return render(request, 'registration/SignUp.html')
def ContactUs(request):
    if request.method == 'POST':
        Nom = request.POST.get('fname')
        Prenom = request.POST.get('lname')
        Email = request.POST.get('email')
        Objet = request.POST.get('subject')
        Message = request.POST.get('message')
        m = Contactus(Nom=Nom,Prenom=Prenom,Email=Email,Objet=Objet,Message=Message)
        m.save()
    return render(request, 'contact.html')

def Faq(request):
    return render(request, 'faq.html')


def job_1(request):
    return render(request, 'job1.html')
def cv(request):
    return render(request, 'cv.html')
def cv1(request):
    return render(request, 'cv1.html')
def cv2(request):
    return render(request, 'cv2.html')
def job_2(request):
    return render(request, 'job2.html')
def job_3(request):
    return render(request, 'job3.html')
def job_4(request):
    return render(request, 'job4.html')
def job_5(request):
    return render(request, 'job5.html')
def job_6(request):
    return render(request, 'job6.html')

def index(request):
    return render(request, 'index.html')
def index1(request):
    return render(request, 'index1.html')

def accueil(request):
    return render(request, 'Accueil.html')

def about(request):
    return render(request, 'about.html')

def Profile(request):
    return render(request, 'profile.html')
def Profile2(request):
    return render(request, 'profile2.html')
def Profile3(request):
    return render(request, 'profile3.html')
def formulaire(request):
    return render(request, 'formulaire.html')

def success(request):
    return render(request, 'success.html')

def Postoffer(request):
    return render(request, 'post-job.html')

def login(request):
    context={}
    if request.method =="POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user:
             return render(request, 'Accueil.html' )
        else:
            context["error"] = "erreur"
            return render(request, 'registration/login.html' )
    else:
        return render(request, 'registration/login.html' )
