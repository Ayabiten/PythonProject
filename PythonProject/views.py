from django.shortcuts import render
from django.contrib.auth import authenticate , login , logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
def messages(request):
    return render(request, 'messages.html')

def Signup(request):
    return render(request, 'SignUp.html')

def jobsingle(request):
    return render(request, 'jobsingle.html')

def cv(request):
    return render(request, 'cv.html')

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

def job1(request):
    return render(request, 'job1.html')

def job2(request):
    return render(request, 'job2.html')

def job3(request):
    return render(request, 'job3.html')

def job4(request):
    return render(request, 'job4.html')

def job5(request):
    return render(request, 'job5.html')

def job6(request):
    return render(request, 'job6.html')

def login(request):
    context={}
    if request.method =="POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user:
             messages.success(request,'votre Login est Valide')
             return render(request, 'Accueil.html' )
        else:
            context["error"] = "erreur"
            return render(request, 'login.html' )
    else:
        return render(request, 'login.html' )
        