# pic-sure-hpds-copdgene

## Configuration

The environment on the host machine, where the *docker-compose* commands are run from, is expected to have an `ENV_FILE` UNIX environment variable present that points to a valid secrets file. This file needs the *FENCE CLIENT ID* and *FENCE CLIENT SECRET* values and other important configuration values present.

## HTTPD

The certificate files are copied into the initial image at `build` time, from `config/httpd/cert` path in the repo, onto the `/usr/local/apache2/cert` directory inside the container.

However, at runtime, the same container directory is volume mapped over from the host, from the `${CONFIG_DIR}/httpd/cert/` directory. 

<small>(Note: where **CONFIG_DIR** is usually the `/usr/local/docker-config` dir on the host). </small>