#!/bin/bash
set -eou pipefail

UPSTREAM_OWNER=percona
UPSTREAM_REPO=percona-xtrabackup

curl -sL "https://api.github.com/repos/${UPSTREAM_OWNER}/${UPSTREAM_REPO}/tags" | jq -r ".[].name" | \
        sort -rV | \
        grep 'percona-xtrabackup' | \
        head -n 1

