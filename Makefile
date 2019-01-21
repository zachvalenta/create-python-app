.PHONY: test

help:
	@echo
	@echo "cov:     generate HTML from coverage report, view HTML report in browser"
	@echo "lint:    lint using flake8"
	@echo "pipfr:   freeze dependencies into requirements.txt"
	@echo "pipin:   install dependencies from requirements.txt"
	@echo "piprs:   remove any installed pkg *not* in requirements.txt"
	@echo "test:    exec unit tests, generate coverage report, view basic report in terminal"
	@echo

cov:test
	coverage html; open htmlcov/index.html

lint:
	flake8 src

pipfr:
	pip freeze > requirements.txt

pipin:
	pip install -r requirements.txt

piprs:
	pip freeze > pkgs-to-rm.txt
	pip uninstall -y -r pkgs-to-rm.txt
	rm pkgs-to-rm.txt
	pip install -r requirements.txt

test:
	coverage run --source='src' -m unittest discover -v; coverage report -m
