PYTHON := $(shell command -v python3.13 2>/dev/null || command -v python3.12 2>/dev/null || command -v python3)
VENV := .venv
PIP := $(VENV)/bin/python -m pip
JUPYTER := $(VENV)/bin/jupyter

.PHONY: setup jupyter kernel docker-build docker-jupyter

setup:
	$(PYTHON) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	$(VENV)/bin/python -m ipykernel install --user --name house-pricing-prediction --display-name "Python (house-pricing-prediction)"

jupyter:
	$(JUPYTER) lab

kernel:
	$(VENV)/bin/python -m ipykernel install --user --name house-pricing-prediction --display-name "Python (house-pricing-prediction)"

docker-build:
	docker build -t house-pricing-jupyter .

docker-jupyter:
	docker run --rm -it -p 8888:8888 -v "$(CURDIR):/app" house-pricing-jupyter
