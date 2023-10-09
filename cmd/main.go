package main

import (
	"fmt"
	"time"
)

func main() {
	i := 0
	for {
		fmt.Println("hello world mac to linux ", i)
		time.Sleep(time.Second * 3)
		i++
	}

}
