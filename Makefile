coverage-report:test
	coverage html

lint:
	flake8 src

pip-install:
	pip install -r requirements.txt

pip-reset:
	pip freeze > pkgs-to-rm.txt
	pip uninstall -y -r pkgs-to-rm.txt
	rm pkgs-to-rm.txt
	pip install -r requirements.txt

test:
	coverage run --source='src' -m unittest discover -v; coverage report -m
