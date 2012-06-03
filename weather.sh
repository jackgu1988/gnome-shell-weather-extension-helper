#!/bin/bash

echo $@ ' -> echo $1'

wget -O .TheWeatherChannel "http://www.weather.com/weather/rss/search?from=rss_index&where=$1&return=/weather/rss/subscription"

cat .TheWeatherChannel | grep "option value" | sed 's/.*<option value=\"//;s/<\/option>.*//' | sed 's/\">/\t/g'

rm .TheWeatherChannel
