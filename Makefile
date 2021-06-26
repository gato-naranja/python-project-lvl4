  
install:
		@poetry install

lint:
		poetry run flake8 task_manager

test:
		poetry run pytest -q --cov=task_manager --cov-report xml tests/

build:
		poetry build

package-install:
		pip install --user dist/*.whl

.PHONY: lint test
