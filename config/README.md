
# Configuration of the PIC-SURE-HPDS UI Stack

This folder has configuration templates for each service in the stack.

This document should provide enough contextual information for you to
deploy this stack using docker, if you are not using docker you can still
use this as a reference. The files modified here are the same for the 
services being hosted no matter how you host them.

The layout of this folder's contents is important as each path is mapped
as a volume into the running environment. Your first step in deploying this
stack is to copy these contents to /usr/local/docker-config/ on your docker 
host and modify them according to your infrastructure and requirements.

* wildfly/  
  * deployments/
    * .githolder
  * standalone.xml  
  * modules/com/sql/mysql/main/
    * module.xml
* httpd/
  * htdocs/psama/settings/
    * settings.json
  * htdocs/picsure/settings/
    * settings.json
  * conf/extra/
    * httpd-vhosts.conf
* hpds/
  * settings/
    * hpds.properties
  * phenotypes/
    * .githolder
  * genotypes/
    * .githolder

# Wildfly

Because Wildlfy is a J2EE application server, it is engineered to host
multiple Java applications. The container we are using to host Wildfly
is the image released from JBoss, information can be obtained here:

https://hub.docker.com/r/jboss/wildfly

## standalone.xml

The configuration file for a standalone Wildfly server is standalone.xml

This file contains configuration for the application server itself in
addition to configuration specific to the applications being hosted.

The configuration of the application server itself is documented by
the maintainers of the Wildfly project. In a production setting, you
may need to adjust this configuration, the circumstances where this
might become necessary are outside the scope of this document.

The application specific configuration in a J2EE server is provided through
the JNDI mechanism. JNDI is effectively a type of key-value store where keys
are called names and values can be any Java object.

The JNDI configuration points you should be aware of in this file are outlined
below. Note that since the standalone.xml file is an XML document, it can
be fairly verbose. The parts you are required to modify for your environment
are in *bold*. You may need to modify other parts of the configuration if 
your particular environment has special performance or security concerns.

There are 2 Java web appplications hosted in the Wildfly container. 

The **PIC-SURE API v2** application serves, secures, and logs
queries to the HPDS datastore. PIC-SURE API v2 can also be configured
to support any number of other PIC-SURE API v2 compliant resources, but
this configuration is outside the scope of this document.

The **PIC-SURE Auth Micro-App**(psama) manages user access and provides RFC-7662
authorization and authentication services to PIC-SURE API v2. 

#### Datasources (standalone.xml)

Both of the J2EE applications use JPA to persist data in a relational
database. This example configuration assumes you are using MySQL as your
database server, but you can adapt this configuration to other database
servers. 

The PIC-SURE API v2 datasource is configured under the jndi-name "java:jboss/datasources/PicsureDS".

You must configure the following entries, if you are unsure what should go in here talk to the system administrator who deployed your MySQL server:

**__PDS_MYSQL_URL__** : Enter the IP or DNS name of your MySQL server. If you are using another database server you will need to find the correct configuration for a jdbc URL specific to your chosen database server.
**__PDS_MYSQL_PORT__** : Enter the TCP port your MySQL server listens on. The default is typically 3306, but your environment may be different.
**__PDS_MYSQL_USERNAME__** : Enter the username to be used by PIC-SURE API v2.
**__PDS_MYSQL_PASSWORD__** : Enter the password to be used by PIC-SURE API v2.

```<datasource jndi-name="java:jboss/datasources/PicsureDS" pool-name="PicsureDS" use-java-context="true">
    <connection-url>jdbc:mysql://__PDS_MYSQL_URL__:__PDS_MYSQL_PORT__/picsure?useUnicode=true&amp;characterEncoding=UTF-8&amp;autoReconnect=true&amp;autoReconnectForPools=true</connection-url>
    <driver>mysql</driver>
    <pool>
        <min-pool-size>5</min-pool-size>
        <max-pool-size>50</max-pool-size>
        <prefill>true</prefill>
    </pool>
    <security>
        <user-name>__PDS_MYSQL_USERNAME__</user-name>
        <password>__PDS_MYSQL_PASSWORD__</password>
    </security>
    <validation>
        <valid-connection-checker class-name="org.jboss.jca.adapters.jdbc.extensions.mysql.MySQLValidConnectionChecker"/>
        <check-valid-connection-sql>SELECT 1</check-valid-connection-sql>
        <validate-on-match>true</validate-on-match>
        <background-validation>false</background-validation>
        <exception-sorter class-name="org.jboss.jca.adapters.jdbc.extensions.mysql.MySQLExceptionSorter"/>
    </validation>
</datasource>
```
The PIC-SURE Auth Micro-App datasource is configured under the jndi-name "java:jboss/datasources/AuthDS".

You must configure the following entries, if you are unsure what should go in here talk to the system administrator who deployed your MySQL server:

**__AUTH_MYSQL_URL__** : Enter the IP or DNS name of your MySQL server. If you are using another database server you will need to find the correct configuration for a jdbc URL specific to your chosen database server.
**__AUTH_MYSQL_PORT__** : Enter the TCP port your MySQL server listens on. The default is typically 3306, but your environment may be different.
**__AUTH_MYSQL_USERNAME__** : Enter the username to be used by PIC-SURE API v2.
**__AUTH_MYSQL_PASSWORD__** : Enter the password to be used by PIC-SURE API v2.

```<datasource jndi-name="java:jboss/datasources/AuthDS" pool-name="AuthDS" use-java-context="true">
    <connection-url>jdbc:mysql://__AUTH_MYSQL_URL__:__AUTH_MYSQL_PORT__/auth?useUnicode=true&amp;characterEncoding=UTF-8&amp;autoReconnect=true&amp;autoReconnectForPools=true</connection-url>
    <driver>mysql</driver>
    <pool>
        <min-pool-size>5</min-pool-size>
        <max-pool-size>50</max-pool-size>
        <prefill>true</prefill>
    </pool>
    <security>
        <user-name>__AUTH_MYSQL_USERNAME__</user-name>
        <password>__AUTH_MYSQL_PASSWORD__</password>
    </security>
    <validation>
        <valid-connection-checker class-name="org.jboss.jca.adapters.jdbc.extensions.mysql.MySQLValidConnectionChecker"/>
        <check-valid-connection-sql>SELECT 1</check-valid-connection-sql>
        <validate-on-match>true</validate-on-match>
        <background-validation>false</background-validation>
        <exception-sorter class-name="org.jboss.jca.adapters.jdbc.extensions.mysql.MySQLExceptionSorter"/>
    </validation>
</datasource>
```

In order to add MySQL support to the Wildfly server, the configuration template also has a driver entry added
to the datasources subsystem configuration for the MySQL driver and a module added in the ee subsystem 
configuration's global-modules section. If you are using a database server other than MySQL, you will need
to configure these per the requirements of your chosen database server.

```
<drivers>
    ...
    <driver name="mysql" module="com.sql.mysql">
        <driver-class>com.mysql.jdbc.Driver</driver-class>
    </driver>
    ...
</drivers>
```

```
<global-modules>
    ...
    <module name="com.sql.mysql" slot="main" />
    ...
</global-modules>
```

#### Application Settings (standalone.xml)

Both of the J2EE applications require some configuration that is specific to your
environment. Currently this is handled in the naming subsystem configuration of the
standalone.xml file. 

You must configure the following entries in the naming subsystem configuration of 
the standalone.xml file. If you are unsure what should go in here talk to a system 
administrator at your institution.

```
<bindings>
    <simple name="java:global/verify_user_method" value="tokenIntrospection"/>
    <simple name="java:global/token_introspection_url" value=" "/>
    <simple name="java:global/token_introspection_token" value="__PSAMA_TOKEN__"/>
    <simple name="java:global/user_id_claim" value="sub"/>
    <simple name="java:global/auth0host" value="https://avillachlab.auth0.com"/>
    <simple name="java:global/systemName" value="nothing"/>
</bindings>
```





