from django.shortcuts import render
from django.contrib.auth import authenticate , login , logout

def login(request):
    return render(request, 'login.html')

def Signup(request):
    return render(request, 'SignUp.html')

def index(request):
    return render(request, 'index.html')

def accueil(request):
    return render(request, 'Accueil.html')

def Contactus(request):
    return render(request, 'ContactUs.html')

def Profile(request):
    return render(request, 'profile.html')

def formulaire(request):
    return render(request, 'formulaire.html')
