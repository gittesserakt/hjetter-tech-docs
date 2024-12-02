SHELL:=/bin/bash
.DEFAULT_GOAL := help
BINARY_NAME := hjetter-tech-docs
DOCKER_REGISTRY := gittesserakt
VERSION := latest

.PHONY: help
help: ## Show this help message
	@echo "Usage: make [target]"
	@echo "Targets:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "  %-20s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: run
run: build ## Run docs
	docker run --rm -it -p 80:8080 ${BINARY_NAME}

.PHONY: build
build: ## Build docs
	docker build --no-cache -t ${BINARY_NAME} -f deployment/Dockerfile .

.PHONY: deploy
deploy: build ## Deploy docs
	docker tag ${BINARY_NAME} ${DOCKER_REGISTRY}/${BINARY_NAME}:${VERSION}
	docker push ${DOCKER_REGISTRY}/${BINARY_NAME}:${VERSION}