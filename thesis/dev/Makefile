# Author: Michael Valdron
ifndef USER
USER=mvaldron # default username
endif

build-local-dev:
	docker build --rm -t mvaldron/dev . --build-arg username="$(USER)"

build-gcp-dev:
	if [ -z "$(PROJECT_ID)" ]; then \
echo 'ERROR: A PROJECT_ID must be specified.' && exit; else \
gcloud builds submit --timeout "1h0m0s" \
--config="gcpbuild.yaml" \
--substitutions=_USERNAME="$(USER)" .; fi
