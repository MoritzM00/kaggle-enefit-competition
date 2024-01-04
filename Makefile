initialize_git:
	git init

install:
	poetry config virtualenvs.in-project true
	poetry install
	poetry run pre-commit install

activate:
	poetry shell

setup: initialize_git install download_data

download_data:
	mkdir data
	kaggle competitions download predict-energy-behavior-of-prosumers
	unzip predict-energy-behavior-of-prosumers.zip -d data
	rm predict-energy-behavior-of-prosumers.zip

test:
	poetry run pytest

docs_view:
	poetry run pdoc enefit --docformat numpy

docs_save:
	poetry run pdoc enefit -o docs --docformat numpy

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache
