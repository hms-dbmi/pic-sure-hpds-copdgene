import pystache

role_mappings = [
    {
    'role': {'name': 'FENCE_phs00007_c1'},
    'privilege': {
        'name': 'PRIV_FENCE_phs000007_c1',
        'description': 'Privilege for HMB,IRB,MDS groups on Framingham'
    },
    'concept_list': 'Coronary_Artery_Risk_Development_in_Young_Adults_CARDIA_Study_Cohort_phs000007_v3_',
    'category_filter': '\\\\_Consents\\Study Accession with Consent Code\\\\',
    'category_value': 'phs000007.p30.v5.c1',
    },
    {
    'role': {'name': 'FENCE_phs00286_c1'},
    'privilege': {
        'name': 'PRIV_FENCE_phs000286_c1',
        'description': 'Privilege for HMB,IRB,MDS groups on Framingham'
    },
    'concept_list': 'Coronary_Artery_Risk_Development_in_Young_Adults_CARDIA_Study_Cohort_phs000286_v3_',
    'category_filter': '\\\\_Consents\\Study Accession with Consent Code\\\\',
    'category_value': 'phs000286.p30.v5.c1',
    },
]

def print_role_mapping(role_mapping):
    print(pystache.render('''

SET @uuidPrivilege = REPLACE(UUID(),'-','');
INSERT INTO `privilege` (`uuid`, `description`, `name`, `application_id`, `queryTemplate`, `queryScope`)
VALUES
    (
        unhex(@uuidPrivilege),
        '{{privilege.description}}',
        '{{privilege.name}}',
        (SELECT uuid FROM application WHERE name = 'PICSURE'),
        '{"categoryFilters": {"{{category_filter}}":["{{category_value}}"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
        '{{concept_list}}'
);

INSERT INTO role_privilege
VALUES
  (
      (SELECT uuid FROM role WHERE name = '{{role.name}}'),
      unhex(@uuidPrivilege)
  );
commit;


''', role_mapping))

for rm in role_mappings:
    print_role_mapping(rm)
