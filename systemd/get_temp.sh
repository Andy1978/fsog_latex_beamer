#!/bin/bash -e

while $(sleep 3);
do

  # Außentemperatur lesen
  temp=$(curl -s https://demo.volkszaehler.org/middleware.php/data/12345678-1234-1234-1234-123456789012.json?from=now | jq '.data.average')
  str=$(LANG=C printf "Außentemperatur = %.1f°C\n" "$temp")
  echo $str

  #if (( $(echo "$temp > 15.0" |bc -l) ));
  #then
  #  notify-send "$str. Bitte Fenster im Wintergarten klappen"
  #fi

done
