# mkdocs build system
# Author: Sathish Kumar
# Reference Author: Jekyll Webpages and Public Websies
# Usage: make help
# Example: make venv build

VENVS_DIR := $(HOME)/.venv
VENV_DIR := $(VENVS_DIR)/sathishgitwebsite

.PHONY: help
help:
	@grep "^# help\:" Makefile | grep -v grep | sed 's/\# help\: //' | sed 's/\# help\://'

# help: MAINTAIN
# help: venv                           - create a clean virtual environment for development
.PHONY: venv
venv:
	@test -d "$(VENVS_DIR)" || mkdir -p "$(VENVS_DIR)"
	@rm -Rf "$(VENV_DIR)"
	@python3 -m venv "$(VENV_DIR)"
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && pip install --upgrade pip wheel && pip install -r requirements.txt"
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"


# help: venv-update                    - update a virtual environment for development
.PHONY: venv-update
venv-update:
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && pip install --upgrade pip wheel && pip install --upgrade -r requirements.txt"
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"


# help: activate                       - enter existing venv
.PHONY: activate
activate:
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"
	@. $(VENV_DIR)/bin/activate
