# Makefile for stark-cad.github.io

.PHONY: deploy serve publish

deploy:
	@./deploy.sh

serve:
	@echo "Serving..."
	hugo server -D --bind 0.0.0.0

publish:
	@echo "Publishing..."
	hugo

clean:
	@echo "Cleaning generated files..."
	@rm -rvf public/*
	@rm -rvf content/*
