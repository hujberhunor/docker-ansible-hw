.PHONY: up down ansible

up: 
	sh gen-ssh.sh
	docker-compose -f docker/docker-compose.yml up -d
down:
	docker-compose -f docker/docker-compose.yml down
ansible:
	ansible-playbook ansible/playbook/motd.yml -i ansible/inventory.ini
