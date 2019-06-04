#!/bin/bash -e

while true;
do

  # Außentemperatur lesen
  temp=$(curl -s https://demo.volkszaehler.org/middleware.php/data/12345678-1234-1234-1234-123456789012.json?from=now | jq '.data.average')

  # und formatiert ausgeben
  LANG=C printf "Außentemperatur = %.1f°C\n" "$temp"

  # 10s warten
  sleep 10
done
