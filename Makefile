.SILENT: help
all: help

wipe-metrics: ## Wipes all previously measured metrics
	docker compose exec -it graphite-statsd bash -c 'rm -rf /opt/graphite/storage/whisper/*'

help: ## Display available commands
	echo "Available make commands:"
	echo
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'
