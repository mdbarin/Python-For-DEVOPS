install:
	# install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# code format
	black *.py mylib/*.py
lint:
	# flake8 or Pylint
test:
	# test
deploy:
	# deploy
all: install format lint test deploy



