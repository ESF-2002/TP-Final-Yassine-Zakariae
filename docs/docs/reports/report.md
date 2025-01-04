> Place the content of your report here (you can have multiple files with images and all)
>
> See the docusaurus documentation if needed


Rapport de projet (Yassine & Zakariae)

## Ce que nous avons fait
1. Mise en place des Dockerfiles et Docker Compose
Dockerfiles pour les services principaux ont été créés :
web-client : Contient la configuration nécessaire pour le conteneur du client web, qui représente l'interface utilisateur de l'application.
vote-api : Le conteneur pour l'API qui gère les votes, avec la connexion à la base de données.
docs : Service de documentation, générant et servant la documentation du projet via un serveur local.
Fichier docker-compose.yml a été créé pour orchestrer le démarrage et la gestion des services. Ce fichier définit les services nécessaires (web-client, vote-api, docs, et db) et leurs dépendances respectives. Nous avons également créé une version de production docker-compose.prod.yml pour gérer les environnements de production et de développement via Docker Compose.
2. Pipeline CI/CD avec GitHub Actions
Nous avons configuré un pipeline d'intégration continue et de déploiement continu (CI/CD) à l'aide de GitHub Actions.
Ce pipeline automatise la construction et le déploiement des services Docker dès qu'un commit est poussé sur la branche principale ou de développement.
Chaque changement dans le code est automatiquement intégré et testé, et les applications sont déployées via Docker Compose à chaque mise à jour, assurant un déploiement continu.
3. Déploiement avec Docker Compose
Les applications (web-client, vote-api et docs) sont déployées à l'aide de Docker Compose, qui gère les différents services de l'application dans des conteneurs séparés.
web-client est accessible sur le port 3000.
vote-api est exposée sur le port 8080, et elle se connecte à une base de données PostgreSQL.
docs est accessible sur le port 4000, servant la documentation générée.
La configuration des services dans le fichier docker-compose.yml permet de gérer facilement les dépendances entre les services, notamment entre le client, l'API, et la base de données.
4. Gestion des branches avec Gitflow
Nous avons suivi le modèle Gitflow pour la gestion des branches. Cela permet d'avoir une structure bien définie :
main : Branche stable pour le code en production.
develop : Branche d'intégration pour les nouvelles fonctionnalités.
Chaque changement majeur est intégré par pull request, qui est revue avant d'être fusionnée dans la branche de développement ou de production.
5. Utilisation de Gitmoji pour les messages de commit
Nous avons utilisé Gitmoji pour rendre les messages de commit plus lisibles et visuellement distinctifs. Chaque type de modification (ajout de fonctionnalité, correction de bug, amélioration) est associé à un emoji, ce qui facilite la lecture et l'organisation des commits dans l'historique du projet.
Exemple : :sparkles: Ajout de la fonctionnalité de vote pour un nouveau développement.

## Déploiement

1. Déploiement des applications
Les applications sont déployées à l'aide de Docker Compose, qui gère les services comme web-client, vote-api, et docs. Chaque service est démarré dans un conteneur Docker spécifique, ce qui garantit un environnement d'exécution isolé et reproductible.
2. Automatisation avec CI/CD
Le processus de déploiement est automatisé via le pipeline CI/CD configuré sur GitHub Actions. Dès qu'un commit est poussé dans la branche appropriée, le pipeline construit les nouvelles images Docker et déploie les services dans l'environnement défini.

 ## Liens
Web Client Déployé:  https://web-client-ftr2.onrender.com/
API Vote Déployée
Documentation Déployée:  https://docs-62fl.onrender.com/
