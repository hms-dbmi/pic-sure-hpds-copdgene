import os, sys, json
import urllib.request

concept_path_name = '\\\\00 Consent groups\\\\'
picsure_application_uuid = '38bad539-8b96-4e71-8a83-bba61961e60a'

def get_mapping_table(jsonFileName):
    with open(jsonFileName) as json_data:
        return json.load(json_data)

def get_gate_uuid(gate_name):
    gate_list = {
        'gate_expectedResultType': 'a0a12449-6527-4f92-962d-c067d86798be',
        'gate_if_info_column_listing': '8497d87e-56e5-49b7-95c2-c7eb85b8ee42'
    }
    return gate_list[gate_name]


def get_rule_type(rule_type_name):
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
    return rule_types[rule_type_name]


def get_access_group(groupnames):
    return {
        "name": "AR_FENCE_{}_only".format(groupnames),
        "description": 'Consent group{} {} only'.format( 's' if len(groupnames.split('-')) > 1 else '', ','.join(groupnames.split('-'))),
        "type": get_rule_type('ANY_CONTAINS'),
        "rule": f"$..categoryFilters.['{concept_path_name}']",
        "value": groupnames,
        "gates": [
            {"uuid": get_gate_uuid('gate_if_info_column_listing')},
            {"uuid": get_gate_uuid('gate_expectedResultType')}
        ],
        "checkMapNode": True,
        "checkMapKeyOnly": False
    }


def get_privilege(projectname, projectcode, groupcode, groupnames, key):
    concept_path = '\\00 Consent groups\\'

    qtemplate = {
        "categoryFilters": {
            concept_path : [
                json.dumps(groupnames.split('-'))
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
        "expectedResultType": "COUNT"
    }

    # 'name': f'PRIV_FENCE_{projectcode}_{groupcode}',
    return {
        'name': f'PRIV_{key}',
        'description': 'View data in consent group{} {} of {} project.'.format(
            's' if len(groupnames.split('-')) > 1 else '',
            ','.join(groupnames.split('-')),
            projectname),
        'application_id': picsure_application_uuid,
        'queryTemplate': json.JSONEncoder().encode(qtemplate),
        'queryScope': '',
    }


def main():
    mapping_table = get_mapping_table(os.getenv('MAPPING_FILE'))

    access_rule_list = []
    for i in mapping_table["projects"]:
        for consent_group in i["consent_groups"]:
            member_names = []
            for consent_group_member in consent_group["names"]:
                member_names.append(consent_group_member["name"])
            print(json.dumps(get_privilege(
                i['name'],
                i['code'],
                consent_group['code'],
                '-'.join(member_names),
                i['key']
            ), indent=4))
            print(",")
            # access_rule_list.append('-'.join(member_names))
            # print("PRIV_FENCE_{}_{} for groups {} in {} project".format(i['code'], consent_group['code'], '-'.join(member_names), i['name']))

    #for ar_name in set(access_rule_list):
    #    print(json.dumps(get_access_group(ar_name), indent=4))
    #    print("\n")


main()
