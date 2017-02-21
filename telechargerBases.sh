#!/bin/bash

curl "https://data.cityofnewyork.us/api/views/feuq-due4/rows.json?accessType=DOWNLOAD" > library.json
curl "https://data.cityofnewyork.us/api/views/fn6f-htvy/rows.json?accessType=DOWNLOAD" > museum.json
curl "https://data.cityofnewyork.us/api/views/jd4g-ks2z/rows.json?accessType=DOWNLOAD" > wifi.json

