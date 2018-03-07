#!/bin/bash

curl "http://localhost:4741/routes/1" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
