#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

range() {
cat << EOF
for i, v := range $1 {
}

EOF
}

iter() {
cat << EOF
for i := 0; i < $1; i++ {
}

EOF
}

err() {
cat << EOF
if err != nil {
    log.Fatalf("$1: %v", err)
}

EOF
}

fn() {
cat << EOF
func $1($2) error {
    return nil
}

EOF
}

mt() {
cat << EOF
func (s *$1) $2($3) error {
    return nil
}

EOF
}
