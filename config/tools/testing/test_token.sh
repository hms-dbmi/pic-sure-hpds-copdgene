#!/bin/sh 
source .env

get_profile() {

	curl -k https://${HOSTNAME}/psama/user/me \
		-H 'Content-Type: application/json' \
		-H "Authorization: Bearer ${TOKEN_GOOGLE_LONGTERM}" 
		#--data '{"query":"\\"}' --output full_search.json

}


get_profile | jq . -


exit


PRIVILEGE_LIST=$(get_profile | jq .privileges - | tr -d "\n" | sed 's/PRIV_FENCE_//g' | tr '_' '.')
echo "PrivilegeList: -${PRIVILEGE_LIST}-"