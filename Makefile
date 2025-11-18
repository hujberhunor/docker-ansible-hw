up: 
	docker-compose -f docker/docker-compose.yml up -d
down:
	docker-compose -f docker/docker-compose.yml down
ansible:
	ansible all -i ansible/inventory.ini -m ping
