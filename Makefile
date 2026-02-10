-include .env_deps .env_dev .env .env_local
export

SHELL=/bin/bash -O globstar
CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

.PHONY: update
update: copy-client-yaml generate format

.PHONY: generate
generate:
	openapi-generator-cli generate -g python -i client.yaml -c openapi-generator-config.yaml --remove-operation-id-prefix -t templates/python

.PHONY: format
format:
	@black .
	@isort .
	@autoflake --in-place --recursive .

.PHONY: lint
lint:
	@black --check --diff .
	@isort --check .
	@autoflake --check --recursive .

.PHONY: templates
templates:
	openapi-generator-cli author template -g python --library httpx

.PHONY: copy-client-yaml
copy-client-yaml:
	@if [ ! -d ../saturn ]; then echo "Unable to find new client.yaml"; exit 1; fi
	@cp ../saturn/pdc/schemas/generated/client.yaml ./

.PHONY: conda-update
conda-update:
	$(CONDA_ACTIVATE) base
	conda env create -n saturn-api --file environment.yaml --yes
	conda env update -n saturn-api --file environment.dev.yaml
	$(CONDA_ACTIVATE) saturn-api
