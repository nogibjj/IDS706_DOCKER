install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

format:	
	black . --line-length 100 --verbose

lint:
	ruff check . --fix --verbose

run:
	python app.py