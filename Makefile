up:
	docker-compose up -d

down:
	docker-compose down

reload:
	docker-compose restart backend frontend

migrate:
	docker-compose run --rm backend sh -c "python manage.py migrate"

init:
	sh tools/setup/script.sh
	docker-compose build
	docker-compose run --rm frontend sh -c "npm install"
	docker-compose run --rm backend sh -c "python manage.py migrate"

generate_secret_key:
	sh tools/generate-secret-key/script.sh

create_django_app:
	export APPNAME=$(APPNAME);
	sh tools/create-django-app/script.sh $(APPNAME) || true

npm_i:
	export MODULE=$(MODULE);
	docker-compose run --rm frontend sh -c "npm i $(MODULE)" || true
