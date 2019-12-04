DELETE FROM role_privilege;
DELETE FROM privilege WHERE name LIKE 'PRIV_FENCE_%';
DELETE FROM role WHERE name LIKE 'FENCE_%';
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_topmed', 
	 'Special role to include all privileges' 
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000280_c1', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000280_c2', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000280_c3', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000280_c4', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs000280_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001211_c1', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001211_c2', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001211_c3', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001211_c4', 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
	 'PRIV_FENCE_phs001211_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001211.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Atherosclerosis_Risk_in_Communities_ARIC_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000287_c1', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000287_c2', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000287_c3', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000287_c4', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs000287_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001368_c1', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001368_c2', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001368_c3', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001368_c4', 
	 'For study Cardiovascular Health Study (CHS) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Cardiovascular Health Study (CHS) Cohort', 
	 'PRIV_FENCE_phs001368_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001368.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Cardiovascular_Health_Study_CHS_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000000_c1', 
	 'For study DCC Harmonized data set' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000000_c2', 
	 'For study DCC Harmonized data set' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000000_c3', 
	 'For study DCC Harmonized data set' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000000_c4', 
	 'For study DCC Harmonized data set' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study DCC Harmonized data set', 
	 'PRIV_FENCE_phs000000_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000000.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000007_c1', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000007_c2', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000007_c3', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000007_c4', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000007_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000974_c1', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000974_c2', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000974_c3', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000974_c4', 
	 'For study Framingham Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Framingham Cohort', 
	 'PRIV_FENCE_phs000974_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000974.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Framingham_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001218_c1', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001218_c2', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001218_c3', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001218_c4', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001218_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001218.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001074_c1', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001074_c2', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001074_c3', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001074_c4', 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study GeneSTAR NextGen Functional Genomics of Platelet Aggregation', 
	 'PRIV_FENCE_phs001074_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'GeneSTAR_NextGen_Functional_Genomics_of_Platelet_Aggregation' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000920_c1', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000920_c2', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000920_c3', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000920_c4', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs000920_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000920.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001180_c1', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001180_c2', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001180_c3', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001180_c4', 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study', 
	 'PRIV_FENCE_phs001180_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genes_Environments_and_Admixture_in_Latino_Asthmatics_GALA_II_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001238_c1', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001238_c2', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001238_c3', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001238_c4', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001238_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001345_c1', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001345_c2', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001345_c3', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001345_c4', 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
	 'PRIV_FENCE_phs001345_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001345.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000784_c1', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000784_c2', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000784_c3', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000784_c4', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs000784_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001217_c1', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001217_c2', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001217_c3', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001217_c4', 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
	 'PRIV_FENCE_phs001217_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001217.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000179_c1', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000179_c2', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000179_c3', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000179_c4', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000179_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000951_c1', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000951_c2', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000951_c3', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000951_c4', 
	 'For study Genetic Epidemiology of COPD (COPDGene)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetic Epidemiology of COPD (COPDGene)', 
	 'PRIV_FENCE_phs000951_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000951.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetic_Epidemiology_of_COPD_COPDGene_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000741_c1', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000741_c2', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000741_c3', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000741_c4', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs000741_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001359_c1', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001359_c2', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001359_c3', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001359_c4', 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
	 'PRIV_FENCE_phs001359_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001359.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000972_c1', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000972_c2', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000972_c3', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000972_c4', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000972_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000972.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000914_c1', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000914_c2', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000914_c3', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000914_c4', 
	 'For study Genome-wide Association Study of Adiposity in Samoans' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Genome-wide Association Study of Adiposity in Samoans', 
	 'PRIV_FENCE_phs000914_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Genome_wide_Association_Study_of_Adiposity_in_Samoans' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001013_c1', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001013_c2', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001013_c3', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001013_c4', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs001013_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000993_c1', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000993_c2', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000993_c3', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000993_c4', 
	 'For study Heart and Vascular Health Study (HVH)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Heart and Vascular Health Study (HVH)', 
	 'PRIV_FENCE_phs000993_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000993.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Heart_and_Vascular_Health_Study_HVH_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001001_c1', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001001_c2', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001001_c3', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001001_c4', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001001_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001062_c1', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001062_c2', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001062_c3', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001062_c4', 
	 'For study MGH Atrial Fibrillation Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study MGH Atrial Fibrillation Study', 
	 'PRIV_FENCE_phs001062_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001062.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'MGH_Atrial_Fibrillation_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000209_c1', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000209_c2', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000209_c3', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000209_c4', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs000209_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001416_c1', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001416_c2', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001416_c3', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001416_c4', 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
	 'PRIV_FENCE_phs001416_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001416.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001402_c1', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001402_c2', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001402_c3', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001402_c4', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs001402_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001402.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000289_c1', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000289_c2', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000289_c3', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000289_c4', 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)', 
	 'PRIV_FENCE_phs000289_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHGRI_Genome_Wide_Association_Study_of_Venous_Thromboembolism_GWAS_of_VTE_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000284_c1', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000284_c2', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000284_c3', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000284_c4', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000284_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000954_c1', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000954_c2', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000954_c3', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000954_c4', 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
	 'PRIV_FENCE_phs000954_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000954.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001207_c1', 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001207_c2', 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001207_c3', 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001207_c4', 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
	 'PRIV_FENCE_phs001207_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000946_c1', 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Boston_Early_Onset_COPD_Study_in_the_TOPMed_Program' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000946_c2', 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Boston_Early_Onset_COPD_Study_in_the_TOPMed_Program' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000946_c3', 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Boston_Early_Onset_COPD_Study_in_the_TOPMed_Program' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000946_c4', 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
	 'PRIV_FENCE_phs000946_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Boston_Early_Onset_COPD_Study_in_the_TOPMed_Program' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001412_c1', 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001412_c2', 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001412_c3', 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001412_c4', 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
	 'PRIV_FENCE_phs001412_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000956_c1', 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000956_c2', 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000956_c3', 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000956_c4', 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
	 'PRIV_FENCE_phs000956_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001293_c1', 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001293_c2', 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001293_c3', 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001293_c4', 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
	 'PRIV_FENCE_phs001293_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001040_c1', 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Novel_Risk_Factors_for_the_Development_of_Atrial_Fibrillation_in_Women' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001040_c2', 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Novel_Risk_Factors_for_the_Development_of_Atrial_Fibrillation_in_Women' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001040_c3', 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Novel_Risk_Factors_for_the_Development_of_Atrial_Fibrillation_in_Women' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001040_c4', 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
	 'PRIV_FENCE_phs001040_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Novel_Risk_Factors_for_the_Development_of_Atrial_Fibrillation_in_Women' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001024_c1', 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Partners_HealthCare_Biobank' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001024_c2', 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Partners_HealthCare_Biobank' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001024_c3', 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Partners_HealthCare_Biobank' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001024_c4', 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Partners HealthCare Biobank', 
	 'PRIV_FENCE_phs001024_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Partners_HealthCare_Biobank' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001387_c1', 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001387_c2', 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001387_c3', 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001387_c4', 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
	 'PRIV_FENCE_phs001387_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001215_c1', 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001215_c2', 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001215_c3', 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001215_c4', 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
	 'PRIV_FENCE_phs001215_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000921_c1', 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Study_of_African_Americans,_Asthma,_Genes_and_Environment_SAGE_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000921_c2', 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Study_of_African_Americans,_Asthma,_Genes_and_Environment_SAGE_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000921_c3', 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Study_of_African_Americans,_Asthma,_Genes_and_Environment_SAGE_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000921_c4', 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
	 'PRIV_FENCE_phs000921_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_Study_of_African_Americans,_Asthma,_Genes_and_Environment_SAGE_Study' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000988_c1', 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000988_c2', 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000988_c3', 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000988_c4', 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
	 'PRIV_FENCE_phs000988_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001143_c1', 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001143_c2', 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001143_c3', 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001143_c4', 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
	 'PRIV_FENCE_phs001143_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000997_c1', 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_AF_Ablation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000997_c2', 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_AF_Ablation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000997_c3', 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_AF_Ablation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000997_c4', 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
	 'PRIV_FENCE_phs000997_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_AF_Ablation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001032_c1', 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_Atrial_Fibrillation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001032_c2', 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_Atrial_Fibrillation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001032_c3', 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_Atrial_Fibrillation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001032_c4', 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
	 'PRIV_FENCE_phs001032_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'NHLBI_TOPMed_The_Vanderbilt_Atrial_Fibrillation_Registry' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000286_c1', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000286_c2', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000286_c3', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000286_c4', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000286_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000964_c1', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000964_c2', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000964_c3', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000964_c4', 
	 'For study The Jackson Heart Study (JHS)' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study The Jackson Heart Study (JHS)', 
	 'PRIV_FENCE_phs000964_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000964.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'The_Jackson_Heart_Study_JHS_' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001237_c1', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001237_c2', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001237_c3', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs001237_c4', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs001237_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001237.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000200_c1', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c1_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c1', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000200_c2', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c2_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c2', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000200_c3', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c3_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c3', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_phs000200_c4', 
	 'For study Women`s Health Initiative' 
);
SET @uuidPrivHarmonized = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPrivHarmonized), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c4_HARMONIZED', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'DCC_Harmonized_data_set' 
);
SET @uuidPriv = REPLACE(UUID(),'-','');
INSERT INTO privilege VALUES ( 
	  unhex(@uuidPriv), 
	 'For study Women`s Health Initiative', 
	 'PRIV_FENCE_phs000200_c4', 
	 (SELECT uuid FROM application WHERE name ='PICSURE'), 
	 '{"categoryFilters": {"\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}', 
	 'Women_s_Health_Initiative' 
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPriv)
);
INSERT INTO role_privilege VALUES (
	 unhex(@uuidRole), 
	 unhex(@uuidPrivHarmonized)
);
INSERT INTO role_privilege VALUES (
	 (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), 
	 unhex(@uuidPriv)
);
