# Variables
PLAYBOOK=./ansible/playbook.yml
INVENTORY=./ansible/inventory.yml
EXTRA_VARS=

run:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) $(EXTRA_VARS)

run-restart: EXTRA_VARS=--extra-vars "restart_all=true"
run-restart: run

