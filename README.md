# app-django
TDD Learning


## Development setup

### 1. Build Docker
 `docker build .` 

### 2. Docker-compose
`docker-compose run --rm app sh -c "django-admin.py startproject app ."`

### 3. core app
`docker-compose run --rm app sh -c "python manage.py startapp core"`