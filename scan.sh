#!/bin/bash

OUTPUT="result.json"

#запуск нмап
nmap "$@" -oX temp.xml

#xml=json

cat temp.xml > $OUTPUT

rm temp.xml

echo "Scan saved to $OUTPUT"
