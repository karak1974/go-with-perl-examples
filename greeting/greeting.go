package main

import "C"

import "fmt"

func main() {}

//export SayGreeting
func SayGreeting(name string) {
    fmt.Printf("Hello %s!\n", name);
}