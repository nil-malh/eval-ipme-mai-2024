.PHONY: all
all: build up

build:
	docker compose build

up:
	docker compose up -d
