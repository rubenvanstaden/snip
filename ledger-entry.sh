#!/usr/bin/env bash

scotia() {
cat << EOF
2023/$1/$2 * $3
    Asset:Scotia:Checking
EOF

}

income() {
cat << EOF
2023/$1/$2 * $3
    Income:Salary
EOF

}
