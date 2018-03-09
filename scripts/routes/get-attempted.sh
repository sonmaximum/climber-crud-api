#!/bin/bash

curl "http://localhost:4741/routes/attempted/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
