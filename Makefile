# ==================================================================================================
#
# Global Variables
#
# ==================================================================================================
PYTHON := /usr/bin/python3
PIP    := /usr/bin/pip3
APT    := /usr/bin/apt

#COLORS
GREEN  := $(shell tput -Txterm setaf 2)
WHITE  := $(shell tput -Txterm setaf 7)
YELLOW := $(shell tput -Txterm setaf 3)
RESET  := $(shell tput -Txterm sgr0)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
# A category can be added with @category
HELP_FUN = \
    %help; \
    while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^([0-9a-zA-Z\-]+)\s*:.*\#\#(?:@([a-zA-Z\-]+))?\s(.*)$$/ }; \
    print "USAGE\n\nmake [target]\n\n"; \
    for (sort keys %help) { \
    print "${WHITE}$$_:${RESET}\n"; \
    for (@{$$help{$$_}}) { \
    $$sep = " " x (16 - length $$_->[0]); \
    print "  ${YELLOW}$$_->[0]${RESET}$$sep${GREEN}$$_->[1]${RESET}\n"; \
    }; \
    print "\n"; }

APT_PACKAGES := python3-pip
APT_DEV_PACKAGES := black python3-bracex python3-filelock python3-jsonschema python3-mypy-extensions python3-pathspec python3-ruamel.yaml.clib python3-ruamel.yaml python3-subprocess-tee python3-wcmatch yamllint
PIP_PACKAGES := ansible ansible_pylibssh
PIP_DEV_PACKAGES := ansible-lint

# ==================================================================================================
#
# Targets
#
# ==================================================================================================
help: ##@other Show this help.
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

bootstrap: ##@bootstrap Initialize Ansible
	@echo "Installing Required System Packages"
	@sudo $(APT) install $(APT_PACKAGES)
	@$(PIP) install --break-system-packages $(PIP_PACKAGES)
	@ansible-playbook playbooks/site.yml --tags ansible

dev: ##@dev Prepare development environment
	@sudo $(APT) install $(APT_DEV_PACKAGES)
	@$(PIP) install --break-system-packages $(PIP_DEV_PACKAGES)

install: bootstrap

lint: lint-basic ##@lint Delint Collection

lint-min: ##@lint Min Profile
	@ansible-lint --profile=min --offline
	@find . -empty -type d -delete

lint-basic: ##@lint Basic Profile
	@ansible-lint --profile=basic --offline
	@find . -empty -type d -delete

lint-moderate: ##@lint Moderate Profile
	@ansible-lint --profile=moderate --offline
	@find . -empty -type d -delete

lint-safety: ##@lint Safety Profile
	@ansible-lint --profile=safety --offline
	@find . -empty -type d -delete

lint-shared: ##@lint Shared Profile
	@ansible-lint --profile=shared --offline
	@find . -empty -type d -delete

lint-production: ##@lint Production Profile
	@ansible-lint --profile=production --offline
	@find . -empty -type d -delete

all: bootstrap

clean: ##@clean Cleans directories
	@echo "Delete empty directories."
	@find . -empty -type d -delete

.PHONY: all bootstrap install
