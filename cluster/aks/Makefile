RG_NAME = $(shell terraform output -raw resource_group_name)
CLUSTER_NAME = $(shell terraform output -raw kubernetes_cluster_name)
APP_NAME = manupulse

.PHONY: init cluster-init get-credentials attach-acr destroy

init: cluster-init get-credentials attach-acr

cluster-init:
	terraform init &&\
	terraform apply &&\
	sleep 120

get-credentials:
	az aks get-credentials --resource-group $(RG_NAME) --name $(CLUSTER_NAME)

attach-acr:
	az aks update -n $(CLUSTER_NAME) -g $(RG_NAME) --attach-acr registry4$(APP_NAME)

destroy:
	terraform destroy &&\
	kubectl config delete-context $(CLUSTER_NAME) 

docker-login:
	docker login registry4$(APP_NAME).azurecr.io \
		--username 00000000-0000-0000-0000-000000000000 \
		--password $(az acr login --name registry4manupulse.azurecr.io --expose-token --output tsv --query accessToken)