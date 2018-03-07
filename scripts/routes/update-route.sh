#!/bin/bash

curl "http://localhost:4741/routes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "route": {
      "outdoors": "true"
    }
  }'

echo
