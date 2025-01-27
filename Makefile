setup:
	python3 -m venv ~/.posio
	
activate:
	. ~/.posio/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	pylint --disable=R,C,W1203,W1202 run.py

all: install lint test
