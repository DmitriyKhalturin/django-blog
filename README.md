### Blog on Django

#### Requirements
* Python 3.8
* Pipenv

#### Installation
```shell script
pipenv install --ignore-pipfile   # Install dependencies from Pipfile.lock
```

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
