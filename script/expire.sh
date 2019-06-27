daysLeft=$(stat ~/motocert.p12 | grep "Modify" | cut -c 9-18)
newYear=$(date -d "$daysLeft+90 days" +%Y)
newMonth=$(date -d "$daysLeft+90 days" +%m)
newDay=$(date -d "$daysLeft+90 days" +%d)
cleanDate="$newYear/$newMonth/$newDay"
echo $(expr '(' $(date -d $cleanDate  +%s) - $(date +%s) + 86399 ')' / 86400) ""
