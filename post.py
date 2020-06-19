
import requests
url = 'http://localhost:5000/guessthis.jpg'
resp = requests.post(url,files={'file': open('/guessthis.jpg','rb')})
print (resp.json())
