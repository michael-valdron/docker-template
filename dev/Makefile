build-local-dev:
	docker build --rm -t mvaldron/dev . --build-arg arg=$(ARCH)

build-gcp-dev:
	gcloud builds submit --timeout "1h0m0s" --config cloudbuild.yaml
