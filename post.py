
import requests
url = 'http://localhost:8000/guessthis.jpg'
resp = requests.post(url,files={'file': open('/guessthis.jpg','rb')})
print (resp.json())
