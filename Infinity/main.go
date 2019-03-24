package main

import "fmt"
import "time"

func main() {
	for {
		fmt.Println("AHOY HOY!!!")
		time.Sleep(time.Second * 1)
	}
}
