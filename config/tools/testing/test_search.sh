#!/bin/sh

source .env

# Search for all concent codes
# Note that the output of this run might take some time (at least locally)
# but the output should still be a valid JSON output.
curl --silent -k https://${HOSTNAME}/picsure/search/${RESOURCE_ID} \
	-H 'Content-Type: application/json' \
	-H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" \
	--data '{"query":"\\"}' --output search_full.json
exit

# Show user profile, and compare it to my own expected profile output
# Since the output lists values that are useless for the outside

curl --silent -k https://${HOSTNAME}/psama/user/me \
	-H 'Content-Type: application/json' \
	-H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" --output user_profile_test.json

jq -r .email user_profile_test.json
exit

# Search for term `asthma`
cat <<EOB > search.json
{"query":"asthma"}
EOB
curl --silent -k https://${HOSTNAME}/picsure/search/${RESOURCE_ID} \
	--data @search.json \
 	 -H 'Content-Type: application/json' \
 	 -H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" | jq '.results.phenotypes | keys' -
rm -f search.json


# Search for all values for the Short Concept Codes
cat <<EOB > search.json
{"query":"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\"}
EOB
curl --silent -k https://${HOSTNAME}/picsure/search/${RESOURCE_ID} \
	--data @search.json \
 	 -H 'Content-Type: application/json' \
 	 -H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" | jq . -
rm -f search.json





# Other options:
#... | jq '.results.phenotypes | to_entries[] | .value.name' -
#... | jq -r '.results.phenotypes."\\_Consents\\Short Study Accession with Consent Code\\".categoryValues[] ' -
