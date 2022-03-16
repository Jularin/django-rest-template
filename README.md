##Run your project locally with command:

```shell
docker-compose -f docker-compose.local.yml up --build -d
```


## To easily develop with PEP8 codestyle install pre-commit
```shell
pre-commit install 
```

##Install dev dependencies with poetry
```shell
poetry install
poetry shell
```

##Run static linters
```shell
flake8
black .
```
