#!/bin/sh -x

# Setup error handler
set -E
trap '[ "$?" -ne 255 ] || exit 255' ERR
fatal_error() {
  echo $1
  exit 255
}

#
# Check and re-create configuration
#

if [ "${CONFIG_DIR}" == "" ];
then
  fatal_error "CONFIG_DIR variable is not set or empty :("
fi
[ -d $CONFIG_DIR ] && echo "CONFIG_DIR is set to ${CONFIG_DIR}" || fatal_error "CONFIG_DIR is set to an invalid directory. ${CONFIG_DIR}"
# Re-create config directory
rm -fR ${CONFIG_DIR}
mkdir -p ${CONFIG_DIR}
cp -r config/* ${CONFIG_DIR}/

# Source the ENV file, to add values to environment (in this script)
if [ "${ENV_FILE}" == "" ];
then
  fatal_error "ENV_FILE variable is not set :("
fi

[ -f $ENV_FILE ] && echo "ENV_FILE is set to ${ENV_FILE}" || fatal_error "Settings file does not exist"
source $ENV_FILE

# Find the PSAMA UI settings file
PSAMAUI_SETTINGS_FILE=${CONFIG_DIR}/httpd/psamaui/settings/settings.json
# Replace placeholder variables, from the UNIX environment variables
if [ $(uname) == "Darwin" ];
then
  echo "This is running on a MacOSX system"
  sed -i '' 's,__FENCE_PROVIDER_URI__,'${FENCE_PROVIDER_URI}',' ${PSAMAUI_SETTINGS_FILE}
  sed -i '' 's,__FENCE_CLIENT_ID__,'${FENCE_CLIENT_ID}',' ${PSAMAUI_SETTINGS_FILE}
  sed -i '' 's,__FENCE_REDIRECT_URL__,'${FENCE_REDIRECT_URL}',' ${PSAMAUI_SETTINGS_FILE}
else
  sed -i 's,__FENCE_PROVIDER_URI__,'${FENCE_PROVIDER_URI}',' ${PSAMAUI_SETTINGS_FILE}
  sed -i 's,__FENCE_CLIENT_ID__,'${FENCE_CLIENT_ID}',' ${PSAMAUI_SETTINGS_FILE}
  sed -i 's,__FENCE_REDIRECT_URL__,'${FENCE_REDIRECT_URL}',' ${PSAMAUI_SETTINGS_FILE}
fi
echo "*** The PSAMA UI Settings File is now ***"
cat $PSAMAUI_SETTINGS_FILE

# Update the application token
if [ $(uname) == "Darwin" ];
then
  cd $HOME/git/pic-sure-hpds-copdgene
else
  cd /home/centos/datastage
fi

docker-compose exec db mysql -u root --password=${PSAMA_DB_PASSWORD} auth -e "UPDATE application SET token = '${PICSURE_APP_TOKEN}';"
docker-compose exec db mysql -u root --password=${PSAMA_DB_PASSWORD} auth -e "SELECT token FROM application;"

# Add the predefined privileges to the PSAMA database
DB_CONTAINER_NAME=$(docker ps --all --format {{.Names}} | grep _db_)
if [ "${DB_CONTAINER_NAME}" == "" ];
then
  echo "Database container is down."
else
  docker cp ${CONFIG_DIR}/db/role_priv.sql ${DB_CONTAINER_NAME}:/tmp/role_priv.sql
  docker-compose exec db sh -c 'mysql -u root --password=${PSAMA_DB_PASSWORD} auth < /tmp/role_priv.sql'
fi
