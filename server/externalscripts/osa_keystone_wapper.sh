#!/bin/bash
#
# Wrapper for Openstack ansible to set the python environment for on the keystone server/container to ensure the openstack clients are available
# Once set it then calls the standard discovery script
#

source /etc/openstack-release
source /openstack/venvs/keystone-$DISTRIB_RELEASE/bin/activate
/etc/zabbix/scripts/openstack/openstack-discovery $1 $2 $3 $4 $5 $6 $7
