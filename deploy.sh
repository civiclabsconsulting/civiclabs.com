#!/bin/bash

make
git add -A
git commit -m "$1"
git push origin master

source .secrets.bash

email=$EMAIL
tkn=$TKN
domain=$DOMAIN

zone=$(curl -s -X GET "https://api.CloudFlare.com/client/v4/zones?name=${domain}&status=active&page=1&per_page=20&order=status&direction=desc&match=all" \
-H "X-Auth-Email: ${email}" \
-H "X-Auth-Key: ${tkn}" \
-H "Content-Type: application/json")

zone=${zone:18:32}

curl -X DELETE "https://api.CloudFlare.com/client/v4/zones/${zone}/purge_cache" \
-H "X-Auth-Email: ${email}" \
-H "X-Auth-Key: ${tkn}" \
-H "Content-Type: application/json" \
--data '{"purge_everything":true}'

curl -X PATCH "https://api.cloudflare.com/client/v4/zones/${zone}/settings/development_mode" \
     -H "X-Auth-Email: ${email}" \
     -H "X-Auth-Key: ${tkn}" \
     -H "Content-Type: application/json" \
     --data '{"value":"on"}'

unset zone email tkn domain
