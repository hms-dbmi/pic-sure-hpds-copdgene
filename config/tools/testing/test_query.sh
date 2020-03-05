#!/bin/sh

source .env

run_test() {
	DATA_FILE=$1

	BNAME=${DATA_FILE}

	curl -i -k \
	--data-binary "@${DATA_FILE}" \
	-X POST \
	-H "Content-type:application/json" \
	-H "Authorization: Bearer ${TOKEN_ERA_LONGTERM}" \
		https://${HOSTNAME}/picsure/query/sync --output ${BNAME}_output.txt 2>${BNAME}_error.txt

	RC=$?
	if [ $RC -ne 0 ];
	then
		#jq . ${BNAME}_output.txt
		# Just show the error response?!
		printf "Failed to send query:\n"
		cat ${BNAME}_error.txt
	else
		rm -f ${BNAME}_error.txt
		# Check for error in the output
		ERROR_TYPE=$(jq -r .errorType ${BNAME}_output.txt 2>/dev/null)
		if [ "${ERROR_TYPE}" != "" ];
		then
			printf "Failed to process query\n"
			cat ${BNAME}_output.txt
			printf "\n"
			#ERROR_MSG=$(jq -r .message ${BNAME}_output.txt)
			#printf "Test: %s Error: ${BNAME} \n" "${BNAME}" "${ERROR_MSG}"
			rm -f ${BNAME}_output.txt
		else
			printf "Test passed\n"
			cat ${BNAME}_output.txt
			rm -f ${BNAME}_output.txt
		fi
	fi
	rm -f $DATA_FILE
}

#"@/tmp/sample_query.json" \
for FILE_QUERY_JSON in query*.json
do
	#printf "Processing: ${FILE_QUERY_JSON}\n\n"

	sed "s/__RESOURCE_ID__/${RESOURCE_ID}/" $FILE_QUERY_JSON > ${FILE_QUERY_JSON}_for_testing
	#cat ${FILE_QUERY_JSON}_for_testing
	#rm ${FILE_QUERY_JSON}_for_testing

	run_test ${FILE_QUERY_JSON}_for_testing
	#mv ${FILE_QUERY_JSON}_saved ${FILE_QUERY_JSON}
done
printf "\n"
