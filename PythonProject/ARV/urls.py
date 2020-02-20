
from django.urls import path
from . import views

urlpatterns = [
    path('',views.index),
    path('offers/(?P<id>[0-9]+)',views.show),
   
]
