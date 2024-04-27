install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=Hello test_hello.py

format:
	black *.py


lint:
	pylint --disable=R,C Hello.py

all: install lint test format