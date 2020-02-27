# PythonProject

les étapes pour ce projet:
    
    - outils utilisé :
        - python version web (contient pip)
        - django :
            pip install django
        - xampp ou bien wamp (php/myadmin)
    

    - changement besoin dans settings.py
         
          TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['("chemin de templates")'],
#exemple:D:\downloads\www\PythonProject\PythonProject\Templates
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
] 

    
    - activation base de donnée:
        cmd : pip install mysqlclient
              py manage.py makemigrations
              py manage.py migrat
    