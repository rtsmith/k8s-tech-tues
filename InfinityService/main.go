package main

import "os"
import "fmt"
import "time"
import "net/http"

func main() {
	host, ok := os.LookupEnv("GO_ENV")

	if !ok {
		host = "http://localhost:4567"
	}

	fmt.Println(host)

	for {
		resp, _ := http.Get(host)
		fmt.Println(resp)
		defer resp.Body.Close()
		time.Sleep(time.Second * 1)
	}
}
