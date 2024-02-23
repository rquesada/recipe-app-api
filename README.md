# recipe-app-api
Using Python, Django and Docker

# Test flake8
docker-compose run --rm app sh -c "flake8"

# Create a new django project inside Docker
docker-compose run --rm app sh -c "django-admin startproject app ."

# Create a new django module
docker-compose run --rm app sh -c "python manage.py startapp <module_name>"

# Run project
docker-compose up

# Apply migrations
docker-compose run --rm app sh -c "python manage.py makemigrations"
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"

# Show list of volume in docker
docker volume ls

# Delete a volume in docker
docker volume rm <recipe-app-api_dev-db-data> 

# Clean docker container
docker-compose down

# Create a superuser
docker-compose run --rm app sh -c "python manage.py createsuperuser"
admin@example.com
123Queso
