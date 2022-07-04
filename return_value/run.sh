#!/bin/bash

go mod init return_value
go mod tidy
go build -o return_value.so -buildmode=c-shared

perl return_value.pl

# Optional
#rm return_value.so return_value.h go.mod
