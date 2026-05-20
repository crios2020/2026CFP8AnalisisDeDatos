import requests

# pip install requests

response=requests.get("https://dolarapi.com/v1/dolares/oficial")

print(response.text)