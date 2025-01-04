DEV_CONFIG = docker-compose.yml
PROD_CONFIG = docker-compose.prod.yml

dev-up:
	docker compose -f $(DEV_CONFIG) up
dev-down:
	docker compose -f $(DEV_CONFIG) down

prod-up:
	docker compose -f $(PROD_CONFIG) up
prod-down:
	docker compose -f $(PROD_CONFIG) down

stop-all:
	docker compose -f $(DEV_CONFIG) down
	docker compose -f $(PROD_CONFIG) down

start-fix:
	twgit hotfix start
end-fix:
	twgit hotfix finish
init-release:
	twgit release start
complete-release:
	twgit release finish
