#!/bin/sh
# Grabs the current temperature from darksky.net
# and prints the current temperature and the "feels like"
# i.e. <temp>° <feels>°

URL='https://darksky.net/forecast/42.0738,-88.0615/us12/en'

wget -q -O- "$URL" | \
awk -F'[;>˚]' '
/summary swap/ {printf("%d° ", $2)}
/Feels Like/ {printf("%d°\n", $5)}
'
