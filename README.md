# app-django
TDD Learning


## Development setup

### 1. Build Docker
 `docker build .` 

### 2. Docker-compose
`docker-compose run --rm app sh -c "django-admin.py startproject app ."`
#### run unit test
`docker-compose run --rm app sh -c "python manage.py test"`

### 3. core app
`docker-compose run --rm app sh -c "python manage.py startapp core"`

### 4. test wait_for_db command.
`docker-compose run --rm app sh -c "python manage.py wait_for_db"`