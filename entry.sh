#!/usr/bin/env bash

heyorca() {
cat << EOF
2023/$1/$2 * HeyOrca
    Asset:Checking:Tangerine   $3 CAD
    Income:Salary
EOF
}

tangerine() {
cat << EOF
2023/$1/$2 * $3
    Asset:Checking:Tangerine
EOF
}

amexcobalt() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:Amex Cobalt
EOF
}

td() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:TD Infinite
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
