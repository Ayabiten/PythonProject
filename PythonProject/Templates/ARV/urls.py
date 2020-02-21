from django.urls import path,include
from . import views

urlpatterns = [
    path('',views.index, name='index'),
    path('(?P<Candidat_id_C>[0-9]+)', views.detail),
    path('ARV/', include('ARV.urls')),
    path('admin/', include('django.contrib.auth.urls')),
]
