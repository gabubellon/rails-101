
up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

build-up: build up

migrate:
	docker-compose exec web rails db:migrate

rspec:
	docker-compose exec web rspec $(FILE)