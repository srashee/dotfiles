#!/usr/bin/python

import requests
import sys
import string
from bs4 import BeautifulSoup

argNum = len(sys.argv)
argument =""

for i in range(argNum):
    if i != 0:
        argument = argument + sys.argv[i] + '+'

args = argument[:-1]

url = 'http://motds.mot-solutions.com/default.asp?numParms=3&hasSubmitted=1&addParm=0&delParm=0&selMaxRecords=100&selFormat=html&selAndOr=%26&selOutput=nonav&chkTypeE=on&chkTypeN=on&chkTypeO=on&selSort=5&selAttrib1=multiple&selLogic1=contains&txtValue1=' + args +'&selAttrib2=fullname&selLogic2=contains&txtValue2=&selAttrib3=motCoreID&selLogic3=contains&txtValue3='

r = requests.get(url)
soup = BeautifulSoup(r.text, 'html.parser')
table = soup.findAll("td", {"class": "ATTRIBVALUE"})

cnt = 0
print "Motorola Solutions Directory Search"
print "**********************************"
for i in range(0, len(table)):
    if table[i].get_text().isspace():
        cnt += 1
        continue
    if cnt == 0:
        print 'Name:' + table[i].get_text()
    if cnt == 1:
        print 'Owner ID:' + table[i].get_text()
    if cnt == 2:
        print 'Dept: ' + table[i].get_text()
    if cnt == 3:
        print 'Location:' + table[i].get_text()
    if cnt == 4:
        print 'Mail Drop:' + table[i].get_text()
    if cnt == 5:
        print 'Phone:' + table[i].get_text()
    if cnt == 6:
        print 'Mobile:' + table[i].get_text()
    if cnt == 7:
        print 'Friendly E-Mail:' + table[i].get_text()
    if cnt == 8:
        print 'Core ID:' + table[i].get_text()
    if cnt == 9:
        print 'Supervisor:' + table[i].get_text()
        cnt = -1
        print ''
    cnt += 1
