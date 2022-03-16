## Run your project locally with command:

```shell
docker-compose -f docker-compose.local.yml up --build -d
```


## To easily develop with PEP8 codestyle install pre-commit
```shell
pre-commit install 
```

## Install dev dependencies with poetry
```shell
poetry install
poetry shell
```

## Run static linters
```shell
flake8
black .
```


## Run test in docker 
```shell
docker-compose -f docker-compose.test.yml -p project_test up -d --build
docker exec -i project_test_web_1 coverage run -m pytest
docker exec -i project_test_web_1 coverage report --rcfile=.coveragerc
```

## [Used styleguide](https://github.com/HackSoftware/Django-Styleguide#overview)
