# #Here we import the required libraries for HTTP requests in Python
# import urllib2
# import urllib # The urllib2 library can't encode url parameters so we need to import this
# import json # The response type is JSON format
#
# #Horizontal line break so we can read terminal output easier
# br = '---------------------------------------------'
#
# #Required parameters from: http://openweathermap.org/appid#use
# #Every API is different, make sure to read the respective documentation
# base_url = 'http://api.openweathermap.org/data/2.5/forecast/city'
# api_key = 'f2bcf7d87edd72c58211083ef36c2080'
# city_id = '4891382'
#
# #Here we build the url parameters in a Python Dictionary (key-value list)
# data = {}
# data['APPID'] = api_key
# data['id'] = city_id
#
# print('The data dictionary is: {}'.format(data))
# print(br)
#
# #Here we format the data for the url
# url_data = urllib.urlencode(data)
# print('The new url-encoded data dictionary is: {}'.format(url_data))
# print(br)
#
# #Combining the base_url and the formatted data
# request_url = base_url + '?' + url_data
# print(request_url)
# print(br)
#
# #Here we open the response
# #The '.read()' method gives us the text of the server's response
# response = urllib2.urlopen(request_url)
#
# #Loading the data in JSON format
# data = json.load(response)
# print(data['city'])
