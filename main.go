package main

import (
	"fmt"
	"math/rand"
)

func main() {
	for true {
		fmt.Printf("%c", 0x2571 + rand.Int() % 2)
	}

}
