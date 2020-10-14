server:
	docker-compose -f docker-compose.yml up -d
backup_image_build:
	docker-compose -f docker-compose.backup.yml build
backup_exec:
	-docker-compose -f docker-compose.backup.yml down
	docker-compose -f docker-compose.backup.yml up
	-docker-compose -f docker-compose.backup.yml down
