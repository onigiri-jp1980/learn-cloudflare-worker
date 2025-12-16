set_env_vars := USER_NAME=(shell whoami) USER_ID=$(shell id -u) GROUP_ID=$(shell id -g)


up:
	$(set_env_vars) docker compose up -d
.PHONY: up

down:
	$(set_env_vars) docker compose down
.PHONY: down

build:
	$(set_env_vars) docker compose build
.PHONY: build

run:
	$(set_env_vars) docker compose run --rm app
.PHONY: run

setup:
	$(set_env_vars) docker compose run --rm app npm install
.PHONY: setup