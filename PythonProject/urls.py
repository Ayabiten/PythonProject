"""PythonProject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from django.contrib.auth import views as auth_views
from . import views

from .views import login

urlpatterns = [
	path('login/', views.login ,name="login"),
    #path('logout/', user_logout ,name="logout"),
    path('Signup/', views.Signup),
    path('success/', views.success ,name="success"),
    path('index/', views.accueil),
    path('', views.index),
    path('ContactUs/', views.Contactus),
    path('Profile/', views.Profile),
    path('formulaire/', views.formulaire),
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
   # path('accounts/login/', auth_views.LoginView.as_view()),
    ]

