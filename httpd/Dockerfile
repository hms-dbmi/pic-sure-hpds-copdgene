#FROM dbmi/pic-sure-hpds-ui:18.1-Quickstart-v2 AS pic-sure-ui
FROM pic-sure-ui-udn:latest AS pic-sure-ui
FROM dbmi/pic-sure-auth-ui:master_4bbe3c0 as pic-sure-auth-ui
FROM httpd:2.4.27-alpine

RUN apk add --update openssl sed

# Replace virtual host config file with ours
COPY httpd-vhosts.conf ${HTTPD_PREFIX}/conf/extra/httpd-vhosts.conf

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

COPY --from=pic-sure-auth-ui /usr/local/apache2/htdocs/psamaui /usr/local/apache2/htdocs/psamaui
COPY --from=pic-sure-ui /usr/local/apache2/htdocs /usr/local/apache2/htdocs/picsureui
COPY src/main/javascript/picsureui-overrides /usr/local/apache2/htdocs/picsureui/overrides
COPY src/main/javascript/hpds /usr/local/apache2/htdocs/picsureui/hpds
COPY src/main/javascript/psamaui-overrides /usr/local/apache2/htdocs/psamaui/overrides