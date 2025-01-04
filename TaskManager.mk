# Fichiers de configuration Docker Compose
DEV_CONFIG = docker-compose.yml
PROD_CONFIG = docker-compose.prod.yml

# Commandes pour l'environnement de développement
dev-up:
	docker compose -f $(DEV_CONFIG) up
dev-down:
	docker compose -f $(DEV_CONFIG) down

# Commandes pour l'environnement de production
prod-up:
	docker compose -f $(PROD_CONFIG) up
prod-down:
	docker compose -f $(PROD_CONFIG) down

# Commande pour arrêter tous les conteneurs
stop-all:
	docker compose -f $(DEV_CONFIG) down
	docker compose -f $(PROD_CONFIG) down

# Gestion des branches avec Twgit
start-fix:
	twgit hotfix start
end-fix:
	twgit hotfix finish
init-release:
	twgit release start
complete-release:
	twgit release finish
