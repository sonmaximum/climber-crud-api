#!/bin/bash

curl "http://localhost:4741/routes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
