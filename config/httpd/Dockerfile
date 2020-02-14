FROM dbmi/pic-sure-hpds-ui:master.0800720 AS pic-sure-ui
FROM dbmi/pic-sure-auth-ui:master.a34a43e as psama-ui
FROM dbmi/pic-sure-auth-ui:fence-integration.7e46cdb1fe84 as psama-fence-ui
FROM httpd:2.4.27-alpine

#RUN apk add --update gcc musl-dev python3-dev libffi-dev libressl-dev jq
#RUN pip3 install --upgrade pip
#RUN pip3 install PyJWT pystache

# Replace virtual host config file with ours
COPY httpd-vhosts.conf ${HTTPD_PREFIX}/conf/extra/httpd-vhosts.conf
COPY DataStage-logo.png ${HTTPD_PREFIX}/htdocs/

# The certificate files in this directory (./config/httpd) are for use as
# a self signed certificates. If real certificates needed to run the `httpd`
# container, the $CONFIG_DIR/httpd/cert directory needs to have the real
# certificate files.
COPY cert/server.chain ${HTTPD_PREFIX}/cert/
COPY cert/server.key ${HTTPD_PREFIX}/cert/
COPY cert/server.crt ${HTTPD_PREFIX}/cert/

# Enable virtual hosting config file
RUN sed -i '/^#Include conf.extra.httpd-vhosts.conf/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf

# Enable necessary proxy modules
RUN sed -i '/^#LoadModule proxy_module/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf
RUN sed -i  '/^#LoadModule proxy_http_module/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf
RUN sed -i '/^#LoadModule proxy_connect_module/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf

#### SSL ####
# enable ssl
RUN sed -i '/^#LoadModule ssl_module modules\/mod_ssl.so/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf
RUN sed -i '/^#LoadModule rewrite_module modules\/mod_rewrite.so/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf
RUN sed -i '/^#LoadModule socache_shmcb_module modules\/mod_socache_shmcb.so/s/^#//' ${HTTPD_PREFIX}/conf/httpd.conf
RUN mkdir /usr/local/apache2/logs/ssl_mutex

# copy pic-sure-hpds-ui and psama_ui base repos first
COPY --from=psama-ui /usr/local/apache2/htdocs/psamaui /usr/local/apache2/htdocs/psamaui
COPY --from=psama-fence-ui /usr/local/apache2/htdocs/psamaui/login /usr/local/apache2/htdocs/psamaui/login

COPY --from=pic-sure-ui /usr/local/apache2/htdocs/picsureui /usr/local/apache2/htdocs/picsureui

# then copy overrides
COPY psamaui-overrides /usr/local/apache2/htdocs/psamaui/
COPY pic-sure-hpds-ui-copdgene/src/main/webapp/picsureui/overrides /usr/local/apache2/htdocs/picsureui/overrides

#copy extra filter hbs file
COPY pic-sure-hpds-ui-copdgene/src/main/webapp/picsureui/filter/ /usr/local/apache2/htdocs/picsureui/filter
COPY DataStage-logo.png ${HTTPD_PREFIX}/htdocs/picsureui/static/logo.png
