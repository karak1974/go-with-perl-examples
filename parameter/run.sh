#!/bin/bash

go mod init parameter
go mod tidy
go build -o parameter.so -buildmode=c-shared

perl parameter.pl

# Optional
#rm parameter.so parameter.h go.mod
