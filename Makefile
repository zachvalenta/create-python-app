.PHONY: test

help:
	@echo "cov:     generate coverage report"
	@echo "lint:    lint using flake8"
	@echo "pip-in:  install dependencies from requirements.txt"
	@echo "pip-rs:  remove any installed pkg *not* in requirements.txt"
	@echo "test:    exec unit tests"

cov:test
	coverage html

lint:
	flake8 src

pip-in:
	pip install -r requirements.txt

pip-rs:
	pip freeze > pkgs-to-rm.txt
	pip uninstall -y -r pkgs-to-rm.txt
	rm pkgs-to-rm.txt
	pip install -r requirements.txt

test:
	coverage run --source='src' -m unittest discover -v; coverage report -m
