#!/usr/bin/python3
import requests

app_id = '9exwB1SKuT2PZrH3AOBqDQ'

secret = '0sDdUtJVO_Sr4ZzvXupWFr0nRd-bJw'
auth = requests.auth.HTTPBasicAuth(app_id, secret)

data = {
        'grant_type': 'password',
        'username': reddit_username,
        'password':reddit_password
        }
headers = {'User-Agent': 'alx_project/0.01'}

res = requests.post('https://www.reddit.com/api/v1/access_token',
        auth = auth, data=data, headers=headers)

print(res)
