
Bonjour, voila les étapes à suivre pour accéder à  notre plateforme:
1-Mettre le dossier du projet dans c://xamp/htdocs
2- ouvrir Xampp , lancer mysql et apache
3-ouvrir phpmyadmin, créer une base de donnée sous le nom "recrutement"
4- importer la bd recrutement depuis le dossier "Python Project"
5-ouvrir la CMD
6- cd "le chemin vers le dossier PythonProject"
7- .\manage.py runserver
8- accéder  au local host via http://127.0.0.1:8080

(IL se peut que ca affiche une errreur (qui informe que les pages n'existent pas), si c'est le cas vous serez obligé de :
-copier le chemin vers le dossier "Template" contenu dans le dossier "PythonProject " 
-puis accéder au script "settings.py" qui se trouve dans PythonProject/PythonProject.

-Ensuite chercher Template,  et coller le chemin dans le lien DIRS
) 
Pour logIn , 
Id =nihal   password =candidat1.
Id=achraf   password=candidat3.
Id=zineb   password=candidat2.

quelque cmd :
        pip install mysqlclient 
        py manage.py makemigrations
        py manage.py migrate
BONNE NAVIGATION.