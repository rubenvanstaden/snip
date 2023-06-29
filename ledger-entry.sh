#!/usr/bin/env bash

amexcobalt() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:Amex Cobalt
EOF

}

amexgold() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:Amex Gold
EOF

}

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
