#!/bin/sh

rm -fR ${CONFIG_DIR}
mkdir -pv ${CONFIG_DIR}
cp -r config/* ${CONFIG_DIR}/

# Source the ENV file, to add values to environment (in this script)
source ${ENV_FILE}

# Find the PSAMA UI settings file
PSAMAUI_SETTINGS_FILE=${CONFIG_DIR}/httpd/psamaui/settings/settings.json

# Replace placeholder variables, from the UNIX environment variables

sed -i '' 's,__FENCE_PROVIDER_URI__,'${FENCE_PROVIDER_URI}',' ${PSAMAUI_SETTINGS_FILE}
sed -i '' 's,__FENCE_CLIENT_ID__,'${FENCE_CLIENT_ID}',' ${PSAMAUI_SETTINGS_FILE}
sed -i '' 's,__FENCE_REDIRECT_BACK_URL__,'${FENCE_REDIRECT_BACK_URL}',' ${PSAMAUI_SETTINGS_FILE}
