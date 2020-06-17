
import requests
url = 'http://localhost:8000/home/dennis/Desktop/craterlabs/blackhole.jpg'
resp = requests.post(url,files={'file': open('/home/dennis/Desktop/craterlabs/blackhole.jpg','rb')})
print (resp.json())