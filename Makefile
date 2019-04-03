.PHONY: test

help:
	@echo
	@echo "🐛 DEBUG"
	@echo
	@echo "repl:    debug using bpython"
	@echo
	@echo "📊 CODE QUALITY"
	@echo
	@echo "cov:     view HTML coverage report in browser"
	@echo "lint:    lint using flake8"
	@echo "secure:  security check using bandit"
	@echo "test:    run unit tests, view basic coverage report in terminal"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "pipfr:   freeze dependencies into requirements.txt"
	@echo "pipin:   install dependencies from requirements.txt"
	@echo "piprs:   remove any installed pkg *not* in requirements.txt"
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
	@echo "🔍 - DISCOVERING UNSAVED PACKAGES\n"
	pip freeze > pkgs-to-rm.txt
	@echo
	@echo "📦 - UNINSTALL ALL PACKAGES\n"
	pip uninstall -y -r pkgs-to-rm.txt
	@echo
	@echo "♻️  - REINSTALL SAVED PACKAGES\n"
	pip install -r requirements.txt
	@echo
	@echo "🗑  - UNSAVED PACKAGES REMOVED\n"
	diff pkgs-to-rm.txt requirements.txt | grep '<'
	@echo
	rm pkgs-to-rm.txt
	@echo

repl:
	bpython

secure:
	bandit -r src

test:
	coverage run --source='src' -m pytest -v && coverage report -m
