.PHONY: test

help:
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "repl:       debug using bpython"
	@echo "secure:     security check using Bandit"
	@echo
	@echo "📊 CODE QUALITY"
	@echo
	@echo "test:       run unit tests, view basic coverage report in terminal"
	@echo "cov:        view HTML coverage report in browser"
	@echo "lint:       lint using flake8"
	@echo "fmt:        autoformat using black"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo

#
# 🛠 UTILS
#

repl:
	poetry run bpython

secure:
	poetry run bandit -r src

#
# 📊 CODE QUALITY
#

test:
	poetry run coverage run --source='src' -m pytest -v && poetry run coverage report -m

cov:
	open htmlcov/index.html

lint:
	poetry run flake8 src

fmt:
	poetry run black src test

#
# 📦 DEPENDENCIES
#

env:
	poetry run poetry env info

deps:
	poetry run poetry show --tree --no-dev
