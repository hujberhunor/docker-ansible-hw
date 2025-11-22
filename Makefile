# To run every time even "nothing" changed
.PHONY: up down ansible

# def value 
CONTI_ENV ?= prod

up: 
	@# check if the user set db name, if not exit (do not print the whole command when running)
	@if [ -z "$(CONTI_DB_NAME)" ]; then \
		echo "You must specify CONTI_DB_NAME in the environment."; \
		exit 1; \
	fi
	
	# print the set variables
	@echo "Using CONTI_ENV=$(CONTI_ENV)"
	@echo "Using CONTI_DB_NAME=$(CONTI_DB_NAME)"
	
	# generate ssh key if it is not existing alredy
	sh gen-ssh.sh 
	
	# start the docker stack
	docker compose up -d
down:
	docker compose down
ansible:
	ansible-playbook playbook/motd.yml 
ping:
	ansible all -m ping 
