# recipe-app-api
Using Python, Django and Docker

# Test flake8
docker-compose run --rm app sh -c "flake8"

# Create a new django project inside Docker
docker-compose run --rm app sh -c "django-admin startproject app ."

# Run project
docker-compose up
