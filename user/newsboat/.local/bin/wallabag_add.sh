#!/bin/sh

if [ -z "$1" ]; then
    echo "error: no url provided in arg"
    exit 1
fi

export `pass api/wallabag`

TOKEN=$(http -b POST https://bag.jombi.fr/oauth/v2/token \
    grant_type=password \
    client_id=$CLIENT_ID \
    client_secret=$CLIENT_SECRET \
    username=$USERNAME \
    password=$PASSWORD | jq -r '.access_token')

http --print=HBhb POST https://bag.jombi.fr/api/entries.xml \
       "Authorization:Bearer $TOKEN" \
        url=$1 > /dev/null 2>&1

