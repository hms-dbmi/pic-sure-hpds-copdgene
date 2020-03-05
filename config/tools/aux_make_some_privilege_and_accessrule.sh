#!/bin/sh

ROLES="FENCE_phs000286_c1
FENCE_phs000007_c2
FENCE_phs000007_c1
FENCE_phs000286_c3
FENCE_phs000179_c1
FENCE_phs000179_c2"

PRIVS="PRIV_FENCE_phs000007_c1
PRIV_FENCE_phs000007_c2
PRIV_FENCE_phs000179_c1
PRIV_FENCE_phs000179_c2
PRIV_FENCE_phs000286_c1
PRIV_FENCE_phs000286_c3"


ARLIST="AR_phs000007_c2
AR_phs000007_c1
AR_phs000179_c1
AR_phs000286_c3
AR_phs000179_c2
AR_phs000286_c1"

GATELIST="GATE_ONLY_INFO
GATE_ONLY_QUERY
GATE_ONLY_SEARCH
GATE_FENCE_CONSENT_REQUIRED"

echo "DELETE FROM role_privilege WHERE role_id IN (SELECT uuid FROM role WHERE name = 'FENCE_TOPMED');"
echo "DELETE FROM accessRule_privilege;"
echo "DELETE FROM accessRule_gate;"
echo "DELETE FROM role_privilege;"
for RN in $ROLES
do
	PRJ=$(echo $RN | cut -d"_" -f 2)
	GRP=$(echo $RN | cut -d"_" -f 3)
	
	
	echo "INSERT INTO role_privilege VALUES ((SELECT uuid FROM role WHERE name = 'FENCE_${PRJ}_${GRP}'),(SELECT uuid FROM privilege WHERE name = 'PRIV_FENCE_${PRJ}_${GRP}')); "
	echo "INSERT INTO role_privilege VALUES ((SELECT uuid FROM role WHERE name = 'FENCE_${PRJ}_${GRP}'),(SELECT uuid FROM privilege WHERE name = 'PRIV_FENCE_${PRJ}_${GRP}_HARMONIZED')); "
	PROJECT=$(echo $PN | cut -d"_" -f 3)
		GROUP=$(echo $PN | cut -d"_" -f 4)
	
		echo "INSERT INTO accessRule_privilege VALUES ((SELECT uuid FROM privilege WHERE name = 'PRIV_FENCE_${PRJ}_${GRP}'),(SELECT uuid FROM access_rule WHERE name ='AR_${PRJ}_${GRP}'));"
		for GTN in $GATELIST
		do
			echo "INSERT INTO accessRule_gate VALUES ((SELECT uuid FROM access_rule WHERE name = 'AR_${PRJ}_${GRP}'), (SELECT uuid FROM access_rule WHERE name = '${GTN}'));"
		done
	
	
done

echo "DELETE FROM user_role;"
#echo "INSERT INTO user_role VALUES ((SELECT uuid FROM user WHERE email = 'gkorodi@gmail.com'),(SELECT uuid FROM role WHERE name = 'FENCE_TOPMED'));"

