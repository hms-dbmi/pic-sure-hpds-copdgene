	DELETE FROM accessRule_privilege;
	DELETE FROM access_rule WHERE name LIKE 'AR_FENCE_phs%';
	DELETE FROM role_privilege;
	DELETE FROM privilege WHERE name LIKE 'PRIV_FENCE_%';
	DELETE FROM user_role WHERE role_id IN (SELECT uuid FROM role WHERE name LIKE 'FENCE_%');
	DELETE FROM role WHERE name LIKE 'FENCE_%';
	
	SET @uuidAR_INFO_COLUMN_LISTING_ALLOWED = REPLACE(UUID(),'-','');
	INSERT INTO access_rule VALUES (
		unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED),
		'AR_INFO_COLUMN_LISTING',
		'allow query to info_column_listing',
		'$.query.query.expectedResultType',
		4,
		'INFO_COLUMN_LISTING',
		0,
		1,
		NULL,
		0,
		0
	);
	
	SET @uuidRole = REPLACE(UUID(),'-','');
INSERT INTO role VALUES ( 
	  unhex(@uuidRole), 
	 'FENCE_topmed', 
	 'Special role to include all privileges' 
);
		
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000007_c0',
			'For study Framingham Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Framingham Cohort', 
			'PRIV_FENCE_phs000007_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Framingham_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000007_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000007.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000007_c1',
			'For study Framingham Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Framingham Cohort', 
			'PRIV_FENCE_phs000007_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Framingham_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000007_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000007.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000007_c2',
			'For study Framingham Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Framingham Cohort', 
			'PRIV_FENCE_phs000007_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000007.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Framingham_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000007_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000007.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000179_c0',
			'For study Genetic Epidemiology of COPD (COPDGene)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology of COPD (COPDGene)', 
			'PRIV_FENCE_phs000179_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_of_COPD_COPDGene_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000179_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000179.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000179_c1',
			'For study Genetic Epidemiology of COPD (COPDGene)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology of COPD (COPDGene)', 
			'PRIV_FENCE_phs000179_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_of_COPD_COPDGene_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000179_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000179.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000179_c2',
			'For study Genetic Epidemiology of COPD (COPDGene)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology of COPD (COPDGene)', 
			'PRIV_FENCE_phs000179_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000179.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_of_COPD_COPDGene_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000179_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000179.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000200_c0',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000200_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000200_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000200.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000200_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000200_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000200_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000200.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000200_c2',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000200_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000200.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000200_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000200.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000209_c0',
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
			'PRIV_FENCE_phs000209_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000209_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000209.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000209_c1',
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
			'PRIV_FENCE_phs000209_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000209_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000209.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000209_c2',
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Multi-Ethnic Study of Atherosclerosis (MESA) Cohort', 
			'PRIV_FENCE_phs000209_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000209.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000209_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000209.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000280_c0',
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
			'PRIV_FENCE_phs000280_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Atherosclerosis_Risk_in_Communities_ARIC_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000280_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000280.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000280_c1',
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
			'PRIV_FENCE_phs000280_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Atherosclerosis_Risk_in_Communities_ARIC_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000280_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000280.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000280_c2',
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Atherosclerosis Risk in Communities (ARIC) Cohort', 
			'PRIV_FENCE_phs000280_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000280.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Atherosclerosis_Risk_in_Communities_ARIC_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000280_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000280.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000284_c0',
			'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
			'PRIV_FENCE_phs000284_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000284_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000284.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000284_c1',
			'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)', 
			'PRIV_FENCE_phs000284_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000284.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_Cleveland_Family_Study_CFS_Candidate_Gene_Association_Resource_CARe_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000284_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000284.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000285_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000285_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000285.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000285_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000285.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000285_c2',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000285_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000285.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000285_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000285.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000286_c0',
			'For study The Jackson Heart Study (JHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study The Jackson Heart Study (JHS)', 
			'PRIV_FENCE_phs000286_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["The_Jackson_Heart_Study_JHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000286_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000286.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000286_c1',
			'For study The Jackson Heart Study (JHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study The Jackson Heart Study (JHS)', 
			'PRIV_FENCE_phs000286_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["The_Jackson_Heart_Study_JHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000286_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000286.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000286_c2',
			'For study The Jackson Heart Study (JHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study The Jackson Heart Study (JHS)', 
			'PRIV_FENCE_phs000286_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["The_Jackson_Heart_Study_JHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000286_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000286.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000286_c3',
			'For study The Jackson Heart Study (JHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study The Jackson Heart Study (JHS)', 
			'PRIV_FENCE_phs000286_c3', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["The_Jackson_Heart_Study_JHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000286_c3', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000286.c3", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000286_c4',
			'For study The Jackson Heart Study (JHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study The Jackson Heart Study (JHS)', 
			'PRIV_FENCE_phs000286_c4', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000286.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["The_Jackson_Heart_Study_JHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000286_c4', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000286.c4", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000287_c0',
			'For study Cardiovascular Health Study (CHS) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Cardiovascular Health Study (CHS) Cohort', 
			'PRIV_FENCE_phs000287_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Cardiovascular_Health_Study_CHS_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000287_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000287.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000287_c1',
			'For study Cardiovascular Health Study (CHS) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Cardiovascular Health Study (CHS) Cohort', 
			'PRIV_FENCE_phs000287_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Cardiovascular_Health_Study_CHS_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000287_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000287.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000287_c2',
			'For study Cardiovascular Health Study (CHS) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Cardiovascular Health Study (CHS) Cohort', 
			'PRIV_FENCE_phs000287_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Cardiovascular_Health_Study_CHS_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000287_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000287.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000287_c3',
			'For study Cardiovascular Health Study (CHS) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Cardiovascular Health Study (CHS) Cohort', 
			'PRIV_FENCE_phs000287_c3', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Cardiovascular_Health_Study_CHS_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000287_c3', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000287.c3", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000287_c4',
			'For study Cardiovascular Health Study (CHS) Cohort'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Cardiovascular Health Study (CHS) Cohort', 
			'PRIV_FENCE_phs000287_c4', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000287.c4"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Cardiovascular_Health_Study_CHS_Cohort","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000287_c4', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000287.c4", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000289_c0',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000289_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000289_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000289.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000289_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000289_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000289.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000289_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000289.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000741_c0',
			'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
			'PRIV_FENCE_phs000741_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000741_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000741.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000741_c1',
			'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study', 
			'PRIV_FENCE_phs000741_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000741.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetics_of_Lipid_Lowering_Drugs_and_Diet_Network_GOLDN_Lipidomics_Study","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000741_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000741.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000784_c0',
			'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
			'PRIV_FENCE_phs000784_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000784_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000784.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000784_c1',
			'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology Network of Salt Sensitivity (GenSalt)', 
			'PRIV_FENCE_phs000784_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000784.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_Network_of_Salt_Sensitivity_GenSalt_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000784_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000784.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000810_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000810_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000810.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000810_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000810.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000810_c2',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000810_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000810.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000810_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000810.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000820_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000820_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000820.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000820_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000820.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000914_c0',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000914_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000914_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000914.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000914_c1',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs000914_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000914.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000914_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000914.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000921_c2',
			'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study', 
			'PRIV_FENCE_phs000921_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000921.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Study_of_African_Americans,_Asthma,_Genes_and_Environment_SAGE_Study","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000921_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000921.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000946_c1',
			'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program', 
			'PRIV_FENCE_phs000946_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000946.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Boston_Early_Onset_COPD_Study_in_the_TOPMed_Program","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000946_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000946.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000956_c0',
			'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
			'PRIV_FENCE_phs000956_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000956_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000956.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000956_c2',
			'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish', 
			'PRIV_FENCE_phs000956_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000956.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Genetics_of_Cardiometabolic_Health_in_the_Amish","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000956_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000956.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000988_c0',
			'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
			'PRIV_FENCE_phs000988_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000988_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000988.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000988_c1',
			'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica', 
			'PRIV_FENCE_phs000988_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000988.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Genetic_Epidemiology_of_Asthma_in_Costa_Rica","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000988_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000988.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs000997_c1',
			'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Vanderbilt AF Ablation Registry', 
			'PRIV_FENCE_phs000997_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs000997.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Vanderbilt_AF_Ablation_Registry","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs000997_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs000997.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001001_c1',
			'For study MGH Atrial Fibrillation Study'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study MGH Atrial Fibrillation Study', 
			'PRIV_FENCE_phs001001_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["MGH_Atrial_Fibrillation_Study","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001001_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001001.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001001_c2',
			'For study MGH Atrial Fibrillation Study'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study MGH Atrial Fibrillation Study', 
			'PRIV_FENCE_phs001001_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001001.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["MGH_Atrial_Fibrillation_Study","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001001_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001001.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001013_c1',
			'For study Heart and Vascular Health Study (HVH)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Heart and Vascular Health Study (HVH)', 
			'PRIV_FENCE_phs001013_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Heart_and_Vascular_Health_Study_HVH_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001013_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001013.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001013_c2',
			'For study Heart and Vascular Health Study (HVH)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Heart and Vascular Health Study (HVH)', 
			'PRIV_FENCE_phs001013_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001013.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Heart_and_Vascular_Health_Study_HVH_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001013_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001013.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001024_c1',
			'For study NHLBI TOPMed: Partners HealthCare Biobank'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Partners HealthCare Biobank', 
			'PRIV_FENCE_phs001024_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001024.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Partners_HealthCare_Biobank","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001024_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001024.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001032_c1',
			'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry', 
			'PRIV_FENCE_phs001032_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001032.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Vanderbilt_Atrial_Fibrillation_Registry","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001032_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001032.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001040_c1',
			'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women', 
			'PRIV_FENCE_phs001040_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001040.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Novel_Risk_Factors_for_the_Development_of_Atrial_Fibrillation_in_Women","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001040_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001040.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001074_c0',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs001074_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001074_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001074.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001074_c2',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs001074_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001074.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001074_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001074.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001143_c0',
			'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
			'PRIV_FENCE_phs001143_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001143_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001143.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001143_c1',
			'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados', 
			'PRIV_FENCE_phs001143_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001143.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_The_Genetics_and_Epidemiology_of_Asthma_in_Barbados","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001143_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001143.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001180_c0',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs001180_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001180_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001180.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001180_c2',
			'For study '
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study ', 
			'PRIV_FENCE_phs001180_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001180.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001180_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001180.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001207_c0',
			'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
			'PRIV_FENCE_phs001207_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001207_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001207.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001207_c1',
			'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: African American Sarcoidosis Genetics Resource', 
			'PRIV_FENCE_phs001207_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001207.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_African_American_Sarcoidosis_Genetics_Resource","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001207_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001207.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001215_c0',
			'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
			'PRIV_FENCE_phs001215_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001215_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001215.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001215_c1',
			'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)', 
			'PRIV_FENCE_phs001215_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001215.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_San_Antonio_Family_Heart_Study_SAFHS_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001215_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001215.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001238_c0',
			'For study Genetic Epidemiology Network of Arteriopathy (GENOA)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
			'PRIV_FENCE_phs001238_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001238_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001238.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001238_c1',
			'For study Genetic Epidemiology Network of Arteriopathy (GENOA)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study Genetic Epidemiology Network of Arteriopathy (GENOA)', 
			'PRIV_FENCE_phs001238_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001238.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["Genetic_Epidemiology_Network_of_Arteriopathy_GENOA_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001238_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001238.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001293_c0',
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
			'PRIV_FENCE_phs001293_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001293_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001293.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001293_c1',
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
			'PRIV_FENCE_phs001293_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001293_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001293.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001293_c2',
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy', 
			'PRIV_FENCE_phs001293_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001293.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_HyperGEN__Genetics_of_Left_Ventricular_LV_Hypertrophy","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001293_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001293.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001387_c0',
			'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
			'PRIV_FENCE_phs001387_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001387_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001387.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001387_c3',
			'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)', 
			'PRIV_FENCE_phs001387_c3', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001387.c3"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Rare_Variants_for_Hypertension_in_Taiwan_Chinese_THRV_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001387_c3', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001387.c3", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001412_c0',
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
			'PRIV_FENCE_phs001412_c0', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c0"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001412_c0', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001412.c0", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001412_c1',
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
			'PRIV_FENCE_phs001412_c1', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c1"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001412_c1', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001412.c1", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
				
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_phs001412_c2',
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'For study NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)', 
			'PRIV_FENCE_phs001412_c2', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"\\\\_Consents\\\\Short Study Accession with Consent Code\\\\":["phs001412.c2"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["NHLBI_TOPMed_Diabetes_Heart_Study_DHS_African_American_Coronary_Artery_Calcification_AA_CAC_","DCC_Harmonized_data_set"]'
		);
						SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_phs001412_c2', 
					'AccessRule for only ', 
					"$..categoryFilters.['\\\\_Consents\\\\Short Study Accession with Consent Code\\\\']", 
					4,
					"phs001412.c2", 
					0, 
					1, 
					NULL, 
					0, 
					0
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidACCESSRULE)
				);
	
				--  INSERT INTO accessRule_gate VALUES (
				--    unhex(@uuidACCESSRULE),
				--    (SELECT uuid FROM access_rule WHERE name = 'GATE_EXPECTED_RESULT_TYPE')
				--  );
	
				INSERT INTO accessRule_gate VALUES (
					unhex(@uuidACCESSRULE),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ALLOW_INFOCOLUMN')
				);
	
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					unhex(@uuidAR_INFO_COLUMN_LISTING_ALLOWED)
				);

				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_QUERY')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_INFO')
				);
		
				INSERT INTO accessRule_privilege VALUES (
					unhex(@uuidPriv),
					(SELECT uuid FROM access_rule WHERE name = 'AR_ONLY_SEARCH')
				);
		

					
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
		