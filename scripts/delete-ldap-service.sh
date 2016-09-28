#!/bin/bash

FILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. ${FILE_DIR}/init.sh

TAGS="delete_service"

ansible-playbook \
  -i ${inventory} ${PLAYBOOKS_DIR}/ldap-service.yml \
  --extra-vars "delete_ldap=true" "$@"
  # --tags=${TAGS}                                    \
