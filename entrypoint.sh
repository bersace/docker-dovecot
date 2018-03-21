#!/bin/bash -eux

run-parts --verbose --exit-on-error /docker-init.d/

exec /tini -- $@
