#!/usr/bin/env bash

set -e

dex() {
cat << EOF
[user]
    email = rvs.hello@pm.me
    name = dextryz
EOF
}

rvs() {
cat << EOF
[user]
	email = rvs.cipher@proton.me
	name = Ruben van Staden
EOF
}
