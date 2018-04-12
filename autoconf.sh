#!/bin/bash -eux

# Désactiver la configuration ouverte, sauf si UNSECURE est défini.
if [ -n "${UNSECURE-}" ] ; then
    openssl dhparam 512 > /etc/ssl/private/snakeoil-dh.pem
else
    rm -f /etc/dovecot/conf.d/99-unsecure.conf
fi
