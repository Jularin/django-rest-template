FROM python:3.9.5

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_VEBOSITY -1

RUN apt update
RUN apt install netcat -y
RUN apt install -y gettext libgettextpo-dev

RUN pip3 install --upgrade pip
RUN pip3 install poetry==1.0.10
COPY pyproject.toml /usr/src/app/pyproject.toml
COPY poetry.lock /usr/src/app/poetry.lock
RUN poetry export -f requirements.txt --output requirements.txt --without-hashes
RUN pip3 install -r requirements.txt

COPY . /usr/src/app/.

RUN chmod 777 /usr/src/app/entrypoint.sh

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

