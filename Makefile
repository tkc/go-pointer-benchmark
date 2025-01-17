#! /usr/bin/make

export GO111MODULE=on

all:build test build
	@echo DONE!

lint:
	@echo LINTING CODE...

dep:
	@echo DOWONLOADING MODULES...
	@go mod download

fmt:
	@echo FORMATTING CODE...
	@go fmt

build:
	@echo GENERATING CODE...
	@go build app.go

bench:
	@echo BENCHMARK...
	@go test -bench . -benchmem ./... -v	

