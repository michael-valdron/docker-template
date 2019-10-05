# Author: Michael Valdron
ifndef USER
USER=mvaldron # default username
endif

build-local-dev:
	docker build --rm -t mvaldron/thesis/dev . --build-arg arg="$(ARCH)" --build-arg username="$(USER)"

build-gcp-dev:
	gcloud builds submit --timeout "1h0m0s" --config cloudbuild.yaml
