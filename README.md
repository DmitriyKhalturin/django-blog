### Blog on Django

#### Requirements
* Python 3.8
* Pipenv

#### Installation
```
pipenv install --ignore-pipfile
```

#### Execution
```
pipenv shell                      # enter to virtual environment
python manage.py makemigrations   # create db migrations scripts (if need)
python manage.py migrate          # apply migrations scripts
python manage.py runserver        # start django server
```
