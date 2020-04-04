GOOS=$(shell go env GOOS)

.DEFAULT_GOAL := run 

.PHONY: build 
build:
	go build -o ./bin/otel-demo-$(GOOS) main.go

.PHONY: run 
run:
	go run main.go
