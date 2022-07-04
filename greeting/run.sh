#!/bin/bash

go mod init greeting
go mod tidy
go build -o greeting.so -buildmode=c-shared

perl greeting.pl

# Optional
#rm greeting.so greeting.h go.mod
