package main

import "C"

import "fmt"

func main() {}

//export HelloWorld
func HelloWorld(n int) {
    for i := 0; i < n; i++ {
        fmt.Println("Hello world from Golang so lib!");
    }
}