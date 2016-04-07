#! python3

# Here we import the required libraries Python
import json # The response type is JSON format
import urllib.parse
import urllib.request

# #Horizontal line break so we can read terminal output easier
br = '---------------------------------------------'

#Required parameters from: http://openweathermap.org/appid#use
#Every API is different, make sure to read the respective documentation
base_url = 'http://api.openweathermap.org/data/2.5/forecast/city'
api_key = 'f2bcf7d87edd72c58211083ef36c2080'
city_id = '4891382'

#Here we build the url parameters in a Python Dictionary (key-value list)
data = {}
data['APPID'] = api_key
data['id'] = city_id

print('The data dictionary is: {}'.format(data))
print(br)

#Here we format the data for the url
url_data = urllib.parse.urlencode(data)
print('The new url-encoded data dictionary is: {}'.format(url_data))
print(br)

#Combining the base_url and the formatted data
request_url = base_url + '?' + url_data
print(request_url)
print(br)

#Here we open the response
#The '.read()' method gives us the text of the server's response
response = urllib.request.urlopen(request_url).read().decode()

#Loading the data in JSON format
data = json.loads(response)
print(data['city'])
