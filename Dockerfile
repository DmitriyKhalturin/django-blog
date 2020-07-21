FROM python:3.8
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE blog.settings
RUN mkdir /blog
WORKDIR /blog
RUN pip install pipenv
COPY Pipfile .
COPY Pipfile.lock .
RUN pipenv install --ignore-pipfile
COPY . .
