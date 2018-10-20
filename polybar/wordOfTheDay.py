import requests
import json
import re
import string
from bs4 import BeautifulSoup, Comment

url = 'https://www.merriam-webster.com/word-of-the-day'

word = requests.get(url)
soup = BeautifulSoup(word.text, 'html.parser')

# Get the word
name = soup.find('title')
cleanName = name.get_text().encode('utf-8', 'ignore')
remove = string.replace(cleanName, 'Word of the Day:', '')
final = string.replace(remove, '| Merriam-Webster', '')

# Get the definition

definition = soup.find("div", {"class": "wod-definition-container"})
definition1 = definition.find('p')
defclean = definition1.get_text().encode('utf-8', 'ignore')
finalDef = string.replace(defclean, '1 : ', '')

#print "Word: " + final
print final + finalDef

#print final
