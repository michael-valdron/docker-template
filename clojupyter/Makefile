# Author: Michael Valdron

build-local-clojupyter:
	docker build --rm -t mvaldron/clojupyter .

build-gcp-clojupyter:
	if [ -z "$(PROJECT_ID)" ]; then \
echo 'ERROR: A PROJECT_ID must be specified.' && exit; else \
gcloud builds submit --timeout "1h0m0s" \
--config="gcpbuild.yaml" \
.; fi
