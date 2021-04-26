.PHONY: venv .venv run test

venv-dir := venv
venv-python := $(venv-dir)/bin/python3

venv: .venv

.venv:
	python3 -m venv $(venv-dir) && \
	$(venv-dir)/bin/pip install -r requirements.txt
	touch .venv

run: .venv
	export FLASK_APP=app.py && \
	$(venv-dir)/bin/flask run
