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
    path('Signup/', views.Signup,name="Signup"),
    path('postuler/', views.Postoffer ),
    path('job1/', views.job_1 ),
    path('job2/', views.job_2 ),
    path('job3/', views.job_3 ),
    path('job4/', views.job_4 ),
    path('job5/', views.job_5 ),
    path('job6/', views.job_6 ),
    path('cv/', views.cv),
    path('Signup/', views.Signup),
    path('ContactUs/', views.ContactUs, name='ContactUs'),
    path('success/', views.success ,name="success"),
    path('Offers/', views.accueil),
    path('', views.index1),
    path('index/', views.index1),
    path('about/', views.about),
    path('Accueil/', views.accueil),
    path('Profile/', views.Profile),
    path('FAQ/', views.Faq),
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
   # path('accounts/login/', auth_views.LoginView.as_view()),
    ]
