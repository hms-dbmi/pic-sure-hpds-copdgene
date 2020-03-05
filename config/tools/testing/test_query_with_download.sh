#!/bin/sh
source .env

cat <<EOB > query.json
{
	"resourceUUID": "${RESOURCE_ID}",
	"query": {
		"categoryFilters": {
			"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\": [
				"phs000179.c2",
				"phs000179.c1"
			],
			"\\\\Genetic Epidemiology of COPD (COPDGene)\\\\Subject Phenotype\\\\Respiratory Disease\\\\Respiratory Conditions\\\\Asthma\\\\Asthma: have you ever had asthma\\\\": [
				"Yes"
			]
		},
		"numericFilters": {
		},
		"requiredFields": [

		],
		"variantInfoFilters": [
			{
				"categoryVariantInfoFilters": {
				},
				"numericVariantInfoFilters": {
				}
			}
		],
		"expectedResultType": "DATAFRAME",
		"fields": [
			"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\"
		]
	},
	"resourceCredentials": {
	}
}
EOB

# Generate a query
curl -X POST \
	--data @query.json \
	--output query_response.json \
	-H "Content-Type: application/json" \
	-H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" \
		https://${HOSTNAME}/picsure/query 
# Cleanup
rm -f query.json

QUERY_ID=$(jq -r .picsureResultId query_response.json)
# Cleanup
rm -f query_response.json

# Download/Show result
curl "https://${HOSTNAME}/picsure/query/${QUERY_ID}/result" \
	-H "Content-Type: application/json" \
	-H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}"



