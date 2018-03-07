#!/bin/bash

curl "http://localhost:4741/routes/2" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
