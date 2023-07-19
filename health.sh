#!/usr/bin/env bash

skin() {
cat << EOF
Expense:Health:Skin    $1 CAD
EOF

}

acupunture() {
cat << EOF
Expense:Health:Acupuncture    $1 CAD
EOF

}

# Yellow, Sweet
supplement() {
cat << EOF
Expense:Health:Supplement    $1 CAD
EOF

}

# Yellow, Sweet
dental() {
cat << EOF
Expense:Health:Dental    $1 CAD
EOF

}
