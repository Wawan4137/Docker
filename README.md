# Projet Docker - Lucas Desnoue & Erwan Gay-Chanteloup

## Installation 

1. Clonez le repertoire dans votre espace de travail Docker `$ git clone https://github.com/Wawan4137/Docker.git` 
2. `$ docker-compose up -d`
3. `$ docker ps -a`
4. Récuperez l'identifiant du conteneur php
5. Accedez à la console du conteneur `$ docker exec -ti [identifiant] bash`
6. Entrez dans le dossier du projet Symfony `$ cd ForumAPI`

### Installation du Projet ForumAPI

1. Une fois dans la console du conteneur, entrez dans le dossier ForumAPI 

`$ cd ForumAPI`

2. Installez les dependances 

`$ composer install`

3. Créez la base de données 

`$ php bin/console doctrine:database:create`

4. Effectuez la migration 

`$ php bin/console doctrine:migrations:migrate`

5. Créer le repertoire de certifications JWT

`$ mkdir -p config/jwt`

6. Generez private.pem, le code est : admin

`$ openssl genpkey -out config/jwt/private.pem -aes256 -algorithm rsa -pkeyopt rsa_keygen_bits:4096`

7. Generez public.pem

`$ openssl pkey -in config/jwt/private.pem -out config/jwt/public.pem -pubout`

8. Demarrez le serveur symfony

`$ symfony serve`

## Accéder à ProjetAPI

1. Lancez un navigateur web
2. Rendez-vous à l'adresse : http://127.0.0.1:5000/api

## Accéder à PHPMyAdmin

1. Lancez un navigateur web
2. Rendez-vous à l'adresse : http://127.0.0.1:8080

> Utilisateur : root
> Mot de passe : root
