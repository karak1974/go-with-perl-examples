package main

import "C"

func main() {}

//export ReturnInt
func ReturnInt() int {
    return 5;
}

//export SumInts
func SumInts(a, b int) int {
    return a + b;
}

//export ReturnString
func ReturnString() string {
    return "John Doe";
}
