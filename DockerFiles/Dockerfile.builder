# Phase 1: Build the Golang project
FROM golang:1.21.4 AS builder

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy go.mod and go.sum to download dependencies
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the entire project
COPY . .

# Build the Golang application
RUN CGO_ENABLED=0 GOOS=linux go build -o app .
