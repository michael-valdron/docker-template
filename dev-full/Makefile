# Author: Michael Valdron

build-local-dev:
	docker build --rm -t mvaldron/dev-full .

build-gcp-dev:
	if [ -z "$(PROJECT_ID)" ]; then \
echo 'ERROR: A PROJECT_ID must be specified.' && exit; else \
gcloud builds submit --timeout "1h0m0s" \
--config="gcpbuild.yaml" .; fi

.PHONY: build-local-dev build-gcp-dev