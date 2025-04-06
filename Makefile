APP_NAME := slack-gemini
BIN_DIR := bin

.PHONY: build run clean fmt vet lint test

build:
	mkdir -p $(BIN_DIR)
	go build -o $(BIN_DIR)/$(APP_NAME) main.go

run:
	go run main.go

clean:
	rm -rf $(BIN_DIR)

fmt:
	go fmt ./...

vet:
	go vet ./...

lint:
	golangci-lint run

test:
	go test -v ./...
