#!/bin/bash

curl "http://localhost:4741/routes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "route": {
      "name": "'"AutotestRoute"'",
      "rating": "'"5.9"'",
      "location": "'"BKB"'",
      "user_id": "1",
      "route_type": "'"top"'",
      "outdoors": "'"false"'",
      "attempted": "'"false"'",
      "completed": "'"false"'",
      "sent": "'"false"'",
      "project": "'"false"'",
      "hangs": "'"3"'",
      "comments": "'"none"'",
      "color": "'"orange"'"
    }
  }'

echo
