#! /bin/bash
year=`date -d yesterday +%Y`
month=`date -d yesterday +%m`
day=`date -d yesterday +%d`
curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.heml?&format=1" > yesterdayweather.txt
maxTemp=`awk -F',' '{print $2}' yesterdayweather.txt | sort -n | tail -n1`
echo The Max temp is $maxTemp
