### Blog on Django

#### Requirements
* [Python 3.8](https://www.python.org/)
* [Pip](https://pypi.org/project/pip/)
* [Pipenv](https://github.com/pypa/pipenv)

#### Installation
```shell script
pipenv install --ignore-pipfile   # Install dependencies from Pipfile.lock
```

#### Configuration
Create `env` dir in project root.
Save to `env` dir 2 configuration files:
1. django.env
```.env
DJANGO_DEBUG=
DJANGO_SECRET_KEY=
DATABASES_NAME=
DATABASES_USER=
DATABASES_PASSWORD=
DATABASES_HOST=
DATABASES_PORT=
```
> Generate Django SECRET_KEY with [online generator](https://djecrety.ir) or execute command:
> ```shell script
> python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key());'
> ```
2. postgres.env
```.env
POSTGRES_USER=
POSTGRES_PASSWORD=
POSTGRES_DB=
```
> These variables are used to service python scripts and configuration postgres docker container.

#### Execution
```shell script
pipenv shell                      # enter to virtual environment
python manage.py makemigrations   # create db migrations scripts (if need)
python manage.py migrate          # apply migrations scripts
python manage.py runserver        # start django server
```

> Python setting script use env variables. For correct execution `manage.py` tasks execute it:
```shell script
export $(grep -v '^#' env/django.env | xargs)
```
