up:
	docker-compose up -d

down:
	docker-compose down

reload:
	docker-compose restart backend frontend

migrate:
	docker-compose run --rm backend sh -c "python manage.py migrate"

init:
	sh tools/setup.sh
	docker-compose build
	docker-compose run --rm frontend sh -c "npm install"
	docker-compose run --rm backend sh -c "python manage.py migrate"

generate_secret_key:
	docker-compose run --rm backend sh -c "python tools/generate_secret_key.py"
