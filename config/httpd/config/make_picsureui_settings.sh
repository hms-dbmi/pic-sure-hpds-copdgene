#!/bin/sh

cat <<EOB >/usr/local/apache2/htdocs/picsureui/settings/settings.json
{
  "resources": [
    {
            "id" : "datastage",
            "name" : "datastage",
            "basePath" : "/picsure",
            "findPath" : "/PIC-SURE/search"
        }
  ],
  "picSureResourceId":"02e23f52-f354-4e8b-992c-d37c8b9ba140",
  "applicationIdForBaseQuery":"8b5722c9-62fd-48d6-b0bf-4f67e53efb2b",
  "helpLink": "mailto:sample@email.com",
  "advancedSearchLink": "/transmart/login/callback_processor",
  "categoryAliases": {
            "Coronary_Artery_Risk_Development_in_Young_Adults_CARDIA_Study_Cohort_phs000285_v3_" : "CARDIA",
            "Framingham_Cohort_phs000007_v30_p11_" : "Framingham",
            "Genetic_Epidemiology_of_COPD_COPDGene_Funded_by_the_National_Heart_Lung_and_Blood_Institute_phs000179_v6_p2_" : "COPDGene",
            "Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort_phs000209_v13_p3_" : "MESA",
            "The_Jackson_Heart_Study_JHS_Cohort_phs000286_v6_p2_" : "JHS",
            "DCC_Harmonized_data_set" : "TOPMed_DCC_Harmonized_Variables"

  },
  "categorySearchResultList" : [
            "DCC_Harmonized_data_set",
            "Coronary_Artery_Risk_Development_in_Young_Adults_CARDIA_Study_Cohort_phs000285_v3_",
            "Framingham_Cohort_phs000007_v30_p11_",
            "Genetic_Epidemiology_of_COPD_COPDGene_Funded_by_the_National_Heart_Lung_and_Blood_Institute_phs000179_v6_p2_",
            "Multi_Ethnic_Study_of_Atherosclerosis_MESA_Cohort_phs000209_v13_p3_",
            "The_Jackson_Heart_Study_JHS_Cohort_phs000286_v6_p2_",
            "_Consents"
             ]
}
EOB
