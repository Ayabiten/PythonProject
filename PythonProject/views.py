from django.shortcuts import render
from django.contrib.auth import authenticate , login , logout
from django.contrib.auth.forms import UserCreationForm

#def login(request):
    #return render(request, 'login.html')

def Signup(request):
    return render(request, 'SignUp.html')

def index(request):
    return render(request, 'index.html')

def accueil(request):
    return render(request, 'Accueil.html')

def about(request):
    return render(request, 'about.html')

def Profile(request):
    return render(request, 'profile.html')

def formulaire(request):
    return render(request, 'formulaire.html')

def success(request):
    return render(request, 'success.html')

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
            return render(request, 'login.html' )
    else:
        return render(request, 'login.html' )
        