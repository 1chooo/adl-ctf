package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"net/http"
)

const (
	urlSubmit = "http://140.115.59.7:12004/api/submit"
	urlScore  = "http://140.115.59.7:12004/api/score"
)

var headersSubmit = map[string]string{
	"Host":            "140.115.59.7:12004",
	"User-Agent":      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
	"Content-Type":    "application/json",
	"Accept":          "*/*",
	"Origin":          "http://140.115.59.7:12004",
	"Referer":         "http://140.115.59.7:12004/",
	"Accept-Encoding": "gzip, deflate, br",
	"Accept-Language": "en-US,en;q=0.9,zh-TW;q=0.8,zh;q=0.7,ja;q=0.6,zh-CN;q=0.5,yo;q=0.4",
	"Cookie":          "session=.eJwNwoENwCAIBMBdmADwK9ptQCFxhqa7t5d7KM-mm3Kx9ynCnWcJ70LTMkCikv-o2Fzm5sBlrTQjdDUfS8eYMHo_BF4Ulg.ZZEk1A.x2q5KgJIfuXayc_2fHhFBBTQqxY",
	"Connection":      "close",
}

var headersScore = map[string]string{
	"Host":            "140.115.59.7:12004",
	"User-Agent":      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
	"Accept":          "*/*",
	"Referer":         "http://140.115.59.7:12004/",
	"Accept-Encoding": "gzip, deflate, br",
	"Accept-Language": "en-US,en;q=0.9,zh-TW;q=0.8,zh;q=0.7,ja;q=0.6,zh-CN;q=0.5,yo;q=0.4",
	"Cookie":          "session=.eJwNwoENwCAIBMBdmADwK9ptQCFxhqa7t5d7KM-mm3Kx9ynCnWcJ70LTMkCikv-o2Fzm5sBlrTQjdDUfS8eYMHo_BF4Ulg.ZZEk1A.x2q5KgJIfuXayc_2fHhFBBTQqxY",
	"Connection":      "close",
}

func main() {
	data := make([][]int, 10)
	for i := range data {
		data[i] = make([]int, 10)
	}

	for i := 0; i < 10; i++ {
		for j := 0; j < 10; j++ {
			for ans := 0; ans < 4; ans++ {
				data[i][j] = ans
				submitResponse := submitData(data)
				scoreResponse := getScore()

				if i*10+j+1 == scoreResponse.Data.Score {
					fmt.Printf("ans: %d\n", ans)
					break
				}
				fmt.Printf("Submit Response: %v\n", submitResponse)
				fmt.Printf("Score Response: %v\n", scoreResponse)
			}
		}
	}
}

func submitData(data [][]int) *http.Response {
	jsonData, _ := json.Marshal(data)
	resp, err := http.Post(urlSubmit, "application/json", bytes.NewBuffer(jsonData))
	if err != nil {
		fmt.Println("Error submitting data:", err)
	}
	return resp
}

func getScore() ScoreResponse {
	resp, err := http.Get(urlScore)
	if err != nil {
		fmt.Println("Error getting score:", err)
	}

	var scoreResponse ScoreResponse
	err = json.NewDecoder(resp.Body).Decode(&scoreResponse)
	if err != nil {
		fmt.Println("Error decoding score response:", err)
	}

	return scoreResponse
}

func setHeaders(req *http.Request, headers map[string]string) {
	for key, value := range headers {
		req.Header.Set(key, value)
	}
}

type ScoreResponse struct {
	Data struct {
		Score int `json:"score"`
	} `json:"data"`
}
