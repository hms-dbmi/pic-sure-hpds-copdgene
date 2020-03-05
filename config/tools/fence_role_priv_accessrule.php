<?php

/*
  public static final int NOT_CONTAINS = 1;
  public static final int NOT_CONTAINS_IGNORE_CASE = 2;
 
  
  public static final int ALL_CONTAINS = 5;
  
  public static final int ANY_CONTAINS = 7;
  public static final int NOT_EQUALS_IGNORE_CASE = 8;
  public static final int ALL_EQUALS_IGNORE_CASE = 9;
  
  public static final int ALL_REG_MATCH = 11;
  public static final int ANY_REG_MATCH = 12;
  public static final int IS_EMPTY = 13;
  public static final int IS_NOT_EMPTY = 14;
*/
define('NOT_EQUALS', 3);
define('ALL_EQUALS', 4);
define('ALL_CONTAINS_IGNORE_CASE', 6);
define('ANY_EQUALS', 10);


$studylist = [
	'Atherosclerosis Risk in Communities (ARIC) Cohort|phs000280|Atherosclerosis Risk in Communities (ARIC) Cohort|ARIC |phs001211|NHLBI TOPMed: Trans-Omics for Precision Medicine (TOPMed) Whole Genome Sequencing Project: ARIC|ARIC',
	'CCF AFIB GWAS study| |Could not identify which study this maps to on the GoogleSheet|   ',
	'Cardiovascular Health Study (CHS) Cohort|phs000287|Cardiovascular Health Study (CHS) Cohort: an NHLBI-funded observational study of risk factors for cardiovascular disease in adults 65 years or older|CHS | phs001368|NHLBI TOPMed: Trans-Omics for Precision Medicine (TOPMed) Whole Genome Sequencing Project: Cardiovascular Health Study|CHS',
	'DCC Harmonized data set|phs000000|Harmonized variables are NOT included in the original study list|  ',
	'Framingham Cohort|phs000007|Framingham Cohort|FHS | phs000974|NHLBI TOPMed: Genomic Activities such as Whole Genome Sequencing and Related Phenotypes in the Framingham Heart Study|FHS',
	'GeneSTAR NextGen Functional Genomics of Platelet Aggregation|phs001218|NHLBI TOPMed: GeneSTAR (Genetic Study of Atherosclerosis Risk)|GeneSTAR | phs001074|GeneSTAR (Genetic Study of Atherosclerosis Risk) NextGen Consortium: Functional Genomics of Platelet Aggregation Using iPS and Derived Megakaryocytes|GeneSTAR',
	'Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study|phs000920|NHLBI TOPMed: Genes-environments and Admixture in Latino Asthmatics (GALA II) Study|GALAII | phs001180|Genes-Environments and Admixture in Latino Asthmatics (GALA II) Study|GALAII',
	'Genetic Epidemiology Network of Arteriopathy (GENOA)|phs001238|Genetic Epidemiology Network of Arteriopathy (GENOA)|GENOA | phs001345|NHLBI TOPMed: Genetic Epidemiology Network of Arteriopathy (GENOA)|GENOA',
	'Genetic Epidemiology Network of Salt Sensitivity (GenSalt)|phs000784|Genetic Epidemiology Network of Salt Sensitivity (GenSalt)|GenSalt | phs001217|NHLBI TOPMed: Genetic Epidemiology Network of Salt Sensitivity (GenSalt)|GenSalt',
	'Genetic Epidemiology of COPD (COPDGene)|phs000179|Genetic Epidemiology of COPD (COPDGene) Funded by the National Heart, Lung, and Blood Institute|COPDGene | phs000951|NHLBI TOPMed: Genetic Epidemiology of COPD (COPDGene)|COPDGene',
	'Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study|phs000741|Genetics of Lipid Lowering Drugs and Diet Network (GOLDN) Lipidomics Study|GOLDN | phs001359|NHLBI TOPMed: GOLDN Epigenetic Determinants of Lipid Response to Dietary Fat and Fenofibrate|GOLDN',
	'Genome-wide Association Study of Adiposity in Samoans|phs000972|Genome-wide Association Study of Adiposity in Samoans|SAS | phs000914|Genome-wide Association Study of Adiposity in Samoans|SAS',
	'Heart and Vascular Health Study (HVH)|phs001013|Heart and Vascular Health Study (HVH)|HVH | phs000993|NHLBI TOPMed: Heart and Vascular Health Study (HVH)|HVH',
	'MGH Atrial Fibrillation Study|phs001001|Massachusetts General Hospital (MGH) Atrial Fibrillation Study|MGH_AF | phs001062|NHLBI TOPMed: Massachusetts General Hospital (MGH) Atrial Fibrillation Study|MGH_AF',
	'Multi-Ethnic Study of Atherosclerosis (MESA) Cohort|phs000209|Multi-Ethnic Study of Atherosclerosis (MESA) Cohort|MESA | phs001416|NHLBI TOPMed: MESA and MESA Family AA-CAC|MESA',
	'NHGRI Genome-Wide Association Study of Venous Thromboembolism (GWAS of VTE)|phs001402|NHLBI TOPMed: Whole Genome Sequencing of Venous Thromboembolism (WGS of VTE)|Mayo_VTE | phs000289|National Human Genome Research Institute (NHGRI) GENEVA Genome-Wide Association Study of Venous Thrombosis (GWAS of VTE)|Mayo_VTE',
	'NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)|phs000284|NHLBI Cleveland Family Study (CFS) Candidate Gene Association Resource (CARe)|CFS | phs000954|NHLBI TOPMed: The Cleveland Family Study - Whole Genome Sequencing|CFS',
	'NHLBI TOPMed: African American Sarcoidosis Genetics Resource|phs001207|NHLBI TOPMed: African American Sarcoidosis Genetics Resource|Sarcoidosis',
	'NHLBI TOPMed: Boston Early-Onset COPD Study in the TOPMed Program|phs000946|NHLBI TOPMed: Boston Early-Onset COPD Study in the National Heart, Lung, and Blood Institute (NHLBI) Trans-Omics for Precision Medicine (TOPMed) Program|EOCOPD',
	'NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)|phs001412|NHLBI TOPMed: Diabetes Heart Study (DHS) African American Coronary Artery Calcification (AA CAC)|DHS',
	'NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish|phs000956|NHLBI TOPMed: Genetics of Cardiometabolic Health in the Amish|Amish',
	'NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy|phs001293|NHLBI TOPMed: HyperGEN - Genetics of Left Ventricular (LV) Hypertrophy|HyperGEN',
	'NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women|phs001040|NHLBI TOPMed: Novel Risk Factors for the Development of Atrial Fibrillation in Women|WGHS',
	'NHLBI TOPMed: Partners HealthCare Biobank|phs001024|NHLBI TOPMed: Partners HealthCare Biobank|Partners',
	'NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)|phs001387|NHLBI TOPMed: Rare Variants for Hypertension in Taiwan Chinese (THRV)|THRV',
	'NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)|phs001215|NHLBI TOPMed: San Antonio Family Heart Study (SAFHS)|SAFS',
	'NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study|phs000921|NHLBI TOPMed: Study of African Americans, Asthma, Genes and Environment (SAGE) Study|SAGE',
	'NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica|phs000988|NHLBI TOPMed: The Genetic Epidemiology of Asthma in Costa Rica|CRA',
	'NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados|phs001143|NHLBI TOPMed: The Genetics and Epidemiology of Asthma in Barbados|BAGS',
	'NHLBI TOPMed: The Vanderbilt AF Ablation Registry|phs000997|NHLBI TOPMed: The Vanderbilt AF Ablation Registry|VAFAR',
	'NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry|phs001032|NHLBI TOPMed: The Vanderbilt Atrial Fibrillation Registry|VU_AF',
	'The Jackson Heart Study (JHS)|phs000286|Jackson Heart Study (JHS) Cohort|JHS | phs000964|NHLBI TOPMed: The Jackson Heart Study|JHS',
	'Women`s Health Initiative|phs001237|NHLBI TOPMed: Women`s Health Initiative (WHI)|WHI | phs000200|Women`s Health Initiative Clinical Trial and Observational Study|WHI'
];



$hpds_list = [
  "phs000007.c0",
  "phs000007.c1",
  "phs000007.c2",
  "phs000179.c0",
  "phs000179.c1",
  "phs000179.c2",
	"phs000200.c0",
  "phs000200.c1",
  "phs000200.c2",
	"phs000209.c0",
  "phs000209.c1",
  "phs000209.c2",
	"phs000280.c0",
  "phs000280.c1",
  "phs000280.c2",
	"phs000284.c0",
  "phs000284.c1",
	"phs000285.c1",
  "phs000285.c2",
  "phs000286.c0",
  "phs000286.c1",
  "phs000286.c2",
  "phs000286.c3",
  "phs000286.c4",
  "phs000287.c0",
  "phs000287.c1",
  "phs000287.c2",
  "phs000287.c3",
  "phs000287.c4",
  "phs000289.c0",
  "phs000289.c1",
  "phs000741.c0",
  "phs000741.c1",
  "phs000784.c0",
  "phs000784.c1",
  "phs000810.c1",
  "phs000810.c2",
  "phs000820.c1",
  "phs000914.c0",
  "phs000914.c1",
  "phs000921.c2",
  "phs000946.c1",
  "phs000956.c0",
  "phs000956.c2",
  "phs000988.c0",
  "phs000988.c1",
  "phs000997.c1",
  "phs001001.c1",
  "phs001001.c2",
  "phs001013.c1",
  "phs001013.c2",
  "phs001024.c1",
  "phs001032.c1",
  "phs001040.c1",
  "phs001074.c0",
  "phs001074.c2",
  "phs001143.c0",
  "phs001143.c1",
  "phs001180.c0",
  "phs001180.c2",
  "phs001207.c0",
  "phs001207.c1",
  "phs001215.c0",
  "phs001215.c1",
  "phs001238.c0",
  "phs001238.c1",
  "phs001293.c0",
  "phs001293.c1",
  "phs001293.c2",
  "phs001387.c0",
  "phs001387.c3",
  "phs001412.c0",
  "phs001412.c1",
  "phs001412.c2"
];

$studies = [];
foreach($studylist AS $study) {

	$parts = explode('|', $study);
	$hpds_name = $parts[0];
	$projects = '**'.$parts[1].'**';
	$study_name = '**'.str_replace('`',"'", $parts[2]).'**';
	$short_code = $parts[3];

	if (count($parts) > 4) {
		$projects .= ' OR **'.trim($parts[4]).'**';
		$study_name .= ' OR **'.str_replace('`',"'", $parts[5]).'**';

		if (trim($short_code) != trim($parts[6])) {
			echo "Error:".$study.PHP_EOL;
		}
		#echo "\tAdditional project/study is *".trim($parts[4]).'/'.$parts[5].'*'.PHP_EOL;

	}

	$studies[$short_code] = [
		'hpds_name'=> $hpds_name,
		'project' => $projects,
		'study_name' => $study_name
	];
}

function rplWithUnderscores($str) {
	$nstr = $str;
	foreach(explode(',', ' ,-,`,:,(,)') AS $needle) {
		$nstr = str_replace($needle, '_', $nstr);
	}
	$c = 10;
	return str_replace('__','_', $nstr, $c);
}

function makeFenceMappingJSON() {
	$fencemapping = [];
	foreach ($studylist AS $study) {
		$parts = explode('|', $study);
		$fencemapping[$parts[1]] = rplWithUnderscores($parts[0]);
	}
	echo json_encode($fencemapping, JSON_PRETTY_PRINT);
}

function makeMarkdownTable() {
	global $sudies;

	ksort($studies);
	echo 'Alias|HPDS|Project|Study/Studies'.PHP_EOL;
	echo '-----|----|-------|-------------'.PHP_EOL;
	foreach($studies AS $k=>$s) {
		echo $k.'|'.$s['hpds_name'].'|'.$s['project'].'|'.$s['study_name'].PHP_EOL;
	}
}

function makeAliasMapping() {
	global $studies;

	$regurge = [];
	foreach($studies AS $k=>$s) {
		$nm = str_replace(',','_', $s['hpds_name']);
		foreach(explode(',',':,`, ,(,),-') AS $chr) {
			$nm = str_replace($chr,'_', $nm);
		}

		$regurge[$k] = str_replace('__','_', str_replace('__','_', $nm));
	}
	asort($regurge);
	foreach($regurge AS $k=>$v) {
		echo '"'.$v.'":"'.trim($k).'",'.PHP_EOL;
	}
}

/*
  `queryTemplate` varchar(8192) COLLATE utf8_bin DEFAULT NULL,
  `queryScope` varchar(512) COLLATE utf8_bin DEFAULT NULL,

*/

$consent_group_path='\\\\\\\\_Consents\\\\\\\\Short Study Accession with Consent Code\\\\\\\\';
$harmonized_withunderscores = 'DCC_Harmonized_data_set';

function printPrivilege($project,$cgroup, $hpds,$short) {
	global $consent_group_path;
	global $harmonized_withunderscores;

	
		$role_description = 'For study '.$hpds;
		$priv_description = 'For study '.$hpds;
		
		$hpds_withunder = rplWithUnderscores($hpds);

		?>
		
		SET @uuidRole = REPLACE(UUID(),'-','');
		INSERT INTO role VALUES (
			unhex(@uuidRole),
			'FENCE_<?=$project?>_<?=$cgroup?>',
			'<?=$role_description?>'
		);
		
		SET @uuidPriv = REPLACE(UUID(),'-','');
		INSERT INTO privilege VALUES ( 
			unhex(@uuidPriv),
			'<?=$priv_description?>', 
			'PRIV_FENCE_<?=$project?>_<?=$cgroup?>', 
			(SELECT uuid FROM application WHERE name ='PICSURE'), 
			'{"categoryFilters": {"<?=$consent_group_path?>":["<?=$project?>.<?=$cgroup?>"]},"numericFilters":{},"requiredFields":[],"variantInfoFilters":[{"categoryVariantInfoFilters":{},"numericVariantInfoFilters":{}}],"expectedResultType": "COUNT"}',
			'["<?=$hpds_withunder?>","<?=$harmonized_withunderscores?>"]'
		);
		<?php
		$isAddAccessRules = true;
		if ($isAddAccessRules) {
			
		?>
				SET @uuidACCESSRULE = REPLACE(UUID(),'-','');
				INSERT INTO `access_rule` VALUES (
					unhex(@uuidACCESSRULE), 
					'AR_FENCE_<?=$project?>_<?=$cgroup?>', 
					'AccessRule for only ', 
					"$..categoryFilters.['<?=$consent_group_path?>']", 
					<?=ALL_EQUALS?>,
					"<?=$project?>.<?=$cgroup?>", 
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
		

		<?php
		}
		?>
			
		INSERT INTO role_privilege VALUES ( unhex(@uuidRole), unhex(@uuidPriv) );
		INSERT INTO role_privilege VALUES ( (SELECT uuid FROM role WHERE name = 'FENCE_topmed'), unhex(@uuidPriv));
		
		<?php
}


function makeStudyMap() {
	global $studylist;
	$arr = [];
	foreach($studylist AS $study) {
		$p = explode('|',$study);
		$arr[$p[1]] = $p[0];
	}
	return $arr;
}

function makePrivilegeList() {
	global $studylist;
	global $hpds_list;
	$studies = [];

	?>
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
		<?=ALL_EQUALS?>,
		'INFO_COLUMN_LISTING',
		0,
		1,
		NULL,
		0,
		0
	);
	
	<?php
	echo "SET @uuidRole = REPLACE(UUID(),'-','');\n";
	echo "INSERT INTO role VALUES ( \n".
		"\t  unhex(@uuidRole), \n".
				"\t 'FENCE_topmed', \n".
					"\t 'Special role to include all privileges' \n".
						");\n";

	$studyMap = makeStudyMap();
	foreach($hpds_list AS $entry) {
		list($pname, $cgroup) = explode('.', $entry);
		printPrivilege($pname, $cgroup,str_replace("'","", $studyMap[$pname]),'');
	}
  return ;
	
$studylist =[];
	foreach($studylist AS $study) {

		$parts = explode('|', $study);
		$hpds_name = $parts[0];
		$projects = $parts[1];
		$study_name = str_replace('`',"'", $parts[2]);
		$short_code = $parts[3];

		printPrivilege($projects,$hpds_name,$short_code);

		if (count($parts) > 4) {
			# Count for more
			$study_name = str_replace('`',"'", $parts[5]);
			printPrivilege(trim($parts[4]),$hpds_name,$short_code);

			if (trim($short_code) != trim($parts[6])) {
				echo "Error:".$study.PHP_EOL;
			}
		}

		$studies[$short_code] = [
			'hpds_name'=> $hpds_name,
			'project' => $projects,
			'study_name' => $study_name
		];
	}
}

makePrivilegeList();
