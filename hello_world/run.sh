#!/bin/bash

go mod init helloworld
go mod tidy
go build -o helloworld.so -buildmode=c-shared

perl helloworld.pl

# Optional
#rm helloworld.so helloworld.h go.mod
