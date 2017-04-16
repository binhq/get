# A Self-Documenting Makefile: http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.PHONY: build dist
.DEFAULT_GOAL := help

build: ## Compile auto-buildable scripts
	@sh build.sh

dist: # Copy all files for hosting to the public directory
	@rm -rf dist
	@mkdir -p dist
	@cp index.html dist/
	@cp githubin generic dist/

help:
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
