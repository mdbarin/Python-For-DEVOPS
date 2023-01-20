install:
	# install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# code format
	black *.py mylib/*.py
lint:
	# flake8 or Pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	# test
	python -m pytest -vv --cov=mylib test_logic.py
buidl:
	# buidl container
deploy:
	# deploy
all: install format lint test deploy



