PLAYBOOK=./ansible/playbook.yml
INVENTORY=./ansible/inventory.yml
EXTRA_VARS=

.PHONY: run-playbook

run-playbook:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) $(EXTRA_VARS)

restart: EXTRA_VARS=--extra-vars "restart_only=true"
restart: run-playbook

