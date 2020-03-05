from jinja2 import Template

#  Requires jinja template parser library for Python (jinja2), which can
# be installed with:
# pip install jinja2
#
# To generate the current combination of validated Project/ConsentGroup pairs
# you can run the following shell command combination
# mysql auth -e 'SELECT name FROM privilege WHERE name LIKE "PRIV_FENCE%";' | grep FENCE | cut -d "_" -f 3,4 | awk -F"_" '{print " {\"project_code\":\""$1"\", \"consent_group\":\""$2"\"}, "}'

#t = Template("Hello {{ something }}!")


archived_access_rules = [
    {
            "uuid":"",
            "name": "HMB Only",
            "description": "only consent group HMB included can pass the check",
            "type": 7,
            "rule": "$..categoryFilters.['\\\\00 Consent groups\\\\']",
            "value": "HMB",
            "gates": [
                { "uuid": "a0a12449-6527-4f92-962d-c067d86798be"},
                { "uuid": "8497d87e-56e5-49b7-95c2-c7eb85b8ee42"}
                ],
             "checkMapNode": True,
            "checkMapKeyOnly": False
    },
    {
            "uuid": "a0a12449-6527-4f92-962d-c067d86798be",
            "name": "gate_expectedResultType",
            "description": "has expected result type meaning normal query will not pass the gate",
            "type": 4,
            "rule": "$.query.query.*",
            "value": "expectedResultType",
            "checkMapKeyOnly": True,
            "checkMapNode": True
    },
    {
        "uuid": "8497d87e-56e5-49b7-95c2-c7eb85b8ee42",
        "name": "gate_if_info_column_listing",
        "description": "INFO_COLUMN_LISTING will not pass the gate",
        "type": 3,
        "rule": "$.query.query.expectedResultType",
        "value": "INFO_COLUMN_LISTING",
        "checkMapKeyOnly": False,
        "checkMapNode": True
    }
]

rule_types = {
    'NOT_CONTAINS': 1,
    'NOT_CONTAINS_IGNORE_CASE': 2,
    'NOT_EQUALS': 3,
    'ALL_EQUALS': 4,
    'ALL_CONTAINS': 5,
    'ALL_CONTAINS_IGNORE_CASE': 6,
    'ANY_CONTAINS': 7,
    'NOT_EQUALS_IGNORE_CASE': 8,
    'ALL_EQUALS_IGNORE_CASE': 9,
    'ANY_EQUALS': 10,
    'ALL_REG_MATCH': 11,
    'ANY_REG_MATCH': 12,
    'IS_EMPTY': 13,
    'IS_NOT_EMPTY': 14,
}

concept_path_name = '\\\\00 Consent groups\\\\'
picsure_application_uuid = '38bad539-8b96-4e71-8a83-bba61961e60a'

def get_access_group(groupnames):
    return {
        "name": "AR_FENCE_{}_only".format(groupnames),
        "description": 'Consent group{} {} only'.format( 's' if len(groupnames.split('-')) > 1 else '', ','.join(groupnames.split('-'))),
        "type": get_rule_type('ANY_CONTAINS'),
        "rule": "$..categoryFilters.['{}']".format(concept_path_name),
        "value": groupnames,
        "gates": [
            {"uuid": get_gate_uuid('gate_if_info_column_listing')},
            {"uuid": get_gate_uuid('gate_expectedResultType')}
        ],
        "checkMapNode": True,
        "checkMapKeyOnly": False
    }


print("""

DELETE FROM `accessRule_gate` WHERE `accessRule_id` IN (SELECT `uuid` FROM `access_rule` WHERE `name` LIKE 'AR_FENCE_%');
DELETE FROM `accessRule_privilege` WHERE `accessRule_id` IN (SELECT `uuid` FROM `access_rule` WHERE `name` LIKE 'AR_FENCE_%');
DELETE FROM `access_rule` WHERE `name` LIKE 'AR_FENCE_%';
DELETE FROM `access_rule` WHERE `name` LIKE 'GATE_%';

-- Set up default gate, will be assigned to all privilege
SET @uuidGATE = REPLACE(UUID(),'-','');
INSERT INTO `access_rule` VALUES (
	unhex(@uuidGATE),
	'GATE_FENCE_CONSENT_REQUIRED',
	'Allow querys with consent requirement only.',
	"$.query.query.expectedResultType",
	10,
	'DATAFRAME,DATAFRAME_MERGED,COUNT,CROSS_COUNT,OBSERVATION_COUNT',
	0,1,NULL,0,0
);

INSERT INTO `access_rule` (`uuid`, `name`, `description`, `rule`, `type`, `value`, `checkMapKeyOnly`, `checkMapNode`, `subAccessRuleParent_uuid`, `isGateAnyRelation`, `isEvaluateOnlyByGates`)
VALUES
	(REPLACE(UUID(),'-',''),'GATE_BLOCK_INFOCOLUMNLISTING','INFO_COLUMN_LISTING will not pass the gate','$.query.query.expectedResultType',3,'INFO_COLUMN_LISTING',b'0',b'1',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'AR_NO_QUERY_ACCESS','Restrict to any query endpoints','$.['Target Service']',1,'/query',b'0',b'0',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'AR_ONLY_INFO','Can only do /query, /info and /search','$.['Target Service']',6,'/info',b'0',b'0',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'AR_ONLY_SEARCH','Can only do /query, /info and /search','$.['Target Service']',6,'/search',b'0',b'0',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'AR_ONLY_QUERY','Can only do /query, /info and /search','$.['Target Service']',6,'/query',b'0',b'0',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'GATE_EXPECTEDRESULTTYPE','has expected result type meaning normal query will not pass the gate','$.query.query',10,'expectedResultType',b'1',b'1',NULL,b'0',b'0'),
	(REPLACE(UUID(),'-',''),'AR_ALLOW_INFOCOLUMNLISTING','allow query to info_column_listing','$.query.query.expectedResultType',4,'INFO_COLUMN_LISTING',b'0',b'1',NULL,b'0',b'0');

""")

ar_details = [
 {"project_code":"phs000007", "consent_group":"c1"},
 {"project_code":"phs000007", "consent_group":"c2"},
 {"project_code":"phs000179", "consent_group":"c1"},
 {"project_code":"phs000179", "consent_group":"c2"},
 {"project_code":"phs000200", "consent_group":"c1"},
 {"project_code":"phs000200", "consent_group":"c2"},
 {"project_code":"phs000209", "consent_group":"c1"},
 {"project_code":"phs000209", "consent_group":"c2"},
 {"project_code":"phs000280", "consent_group":"c1"},
 {"project_code":"phs000280", "consent_group":"c2"},
 {"project_code":"phs000284", "consent_group":"c1"},
 {"project_code":"phs000286", "consent_group":"c1"},
 {"project_code":"phs000286", "consent_group":"c2"},
 {"project_code":"phs000286", "consent_group":"c3"},
 {"project_code":"phs000286", "consent_group":"c4"},
 {"project_code":"phs000287", "consent_group":"c1"},
 {"project_code":"phs000287", "consent_group":"c2"},
 {"project_code":"phs000287", "consent_group":"c3"},
 {"project_code":"phs000287", "consent_group":"c4"},
 {"project_code":"phs000289", "consent_group":"c1"},
 {"project_code":"phs000741", "consent_group":"c1"},
 {"project_code":"phs000784", "consent_group":"c1"},
 {"project_code":"phs000914", "consent_group":"c1"},
 {"project_code":"phs000921", "consent_group":"c2"},
 {"project_code":"phs000946", "consent_group":"c1"},
 {"project_code":"phs000956", "consent_group":"c2"},
 {"project_code":"phs000988", "consent_group":"c1"},
 {"project_code":"phs000997", "consent_group":"c1"},
 {"project_code":"phs001001", "consent_group":"c1"},
 {"project_code":"phs001001", "consent_group":"c2"},
 {"project_code":"phs001013", "consent_group":"c1"},
 {"project_code":"phs001013", "consent_group":"c2"},
 {"project_code":"phs001024", "consent_group":"c1"},
 {"project_code":"phs001032", "consent_group":"c1"},
 {"project_code":"phs001040", "consent_group":"c1"},
 {"project_code":"phs001074", "consent_group":"c2"},
 {"project_code":"phs001143", "consent_group":"c1"},
 {"project_code":"phs001180", "consent_group":"c2"},
 {"project_code":"phs001207", "consent_group":"c1"},
 {"project_code":"phs001215", "consent_group":"c1"},
 {"project_code":"phs001238", "consent_group":"c1"},
 {"project_code":"phs001293", "consent_group":"c1"},
 {"project_code":"phs001293", "consent_group":"c2"},
 {"project_code":"phs001387", "consent_group":"c3"},
 {"project_code":"phs001412", "consent_group":"c1"},
 {"project_code":"phs001412", "consent_group":"c2"}
 ]

# The template will generate the SQL to insert the AccessRule into the
# table, and connect it to the corresponding privilege

#INSERT INTO `access_rule` VALUES (
#    hex(@uuidAR),
#    'AR_FENCE_{{ project_code }}_{{ consent_group }}',
#    'Fence AR {{ project_code }}/{{ consent_group }}',
#    '{{ ar_rule }}',
#    {{ ar_type }},
#    '{{ ar_value }}',
#    {{ checkMapKeyOnly }},
#    {{ checkMapNode }},
#    {{ subAccessRuleParent_uuid }},
#    {{ isGateAnyRelation }},
#    {{ isEvaluateOnlyByGates }}
#);

t = Template("""

SET @uuidAR = REPLACE(UUID(),'-','');
INSERT INTO `access_rule` VALUES (
    unhex(@uuidAR),
    'AR_FENCE_{{ project_code }}_{{ consent_group }}',
    'Only consent group {{ consent_group }} included can pass the check',
    "{{ ar_rule }}",{{ ar_type }},'{{ ar_value }}',0,1,{{ subAccessRuleParent_uuid }},0,0
);

-- Attach this new rule to the corresponding privilege
INSERT INTO `accessRule_privilege` VALUES((SELECT `uuid` FROM `privilege` WHERE `name` = 'PRIV_FENCE_{{ project_code }}_{{ consent_group }}'),unhex(@uuidAR));

-- Attach this new rule to the global GATE
INSERT INTO `accessRule_gate` VALUES(unhex(@uuidAR),(SELECT `uuid` FROM `access_rule` WHERE `name` = 'GATE_FENCE_CONSENT_REQUIRED'));

""")

# Create an access rule for each project/consent_group combination
for ar_detail in ar_details:
    print(t.render(
        project_code=ar_detail['project_code'],
        consent_group=ar_detail['consent_group'],
        ar_type = 4,
        ar_rule = "$..categoryFilters.['{divider}_Consents{divider}Short Study Accession with Consent code{divider}']".format(divider='\\\\\\\\'),
        ar_value = '{}.{}'.format(ar_detail['project_code'], ar_detail['consent_group']),
        checkMapKeyOnly = 0,
        checkMapNode = 1,
        subAccessRuleParent_uuid  = 'NULL',
        isGateAnyRelation = 0,
        isEvaluateOnlyByGates = 0
    ))

# Basic Example:
# My favorite numbers: are {% for n in range(1,10) %}{{n}} {% endfor %}
print("commit;")
