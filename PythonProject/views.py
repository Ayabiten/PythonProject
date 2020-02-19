from django.shortcuts import render
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
