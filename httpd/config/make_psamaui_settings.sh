#!/bin/sh

cat <<EOB > /usr/local/apache2/htdocs/psamaui/settings/settings.json
{
  "servicesPath" : "/psama",
  "basePath" : "/psama",
  "uiPath": "",
  "helpLink": "",
  "customizeAuth0Login": true,
  "client_id": "ThisIsDefinedAheadOfTimeBySomeoneElse",
  "idp_provider":"fence",
  "idp_provider_uri":"https://staging.datastage.io",
  "fence_client_id":"3YkHUAoPSwaRWzSuNN0DyDbJeU1AxrMVkXBczDo6",
  "fence_redirect_url":"https://datastage-i2b2-transmart-stage.aws.dbmi.hms.harvard.edu/psamaui/login/"
}
EOB
