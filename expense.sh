#!/usr/bin/env bash

streaming() {
cat << EOF
    Expense:Subscription:Streaming    $1 CAD
EOF
}

software() {
cat << EOF
    Expense:Subscription:Software    $1 CAD
EOF
}

bubble() {
cat << EOF
    Expense:Dining:Bubble Tea    $1 CAD
EOF
}

# Software, Finance
course() {
cat << EOF
    Expense:Course:$1    $2 CAD
EOF
}

# Flight, Loding, Food
travel() {
cat << EOF
    Expense:Travel:$1    $2 CAD
EOF

}

internet() {
cat << EOF
    Expense:Utility:Internet    $1 CAD
EOF
}

# Mobile data only.
mobile() {
cat << EOF
    Expense:Utility:Mobile    $1 CAD
EOF
}

taxi() {
cat << EOF
    Expense:Transport:Taxi    $1 CAD
EOF
}

metro() {
cat << EOF
    Expense:Transport:Metro    $1 CAD
EOF
}

coffee() {
cat << EOF
    Expense:Dining:Coffee    $1 CAD
EOF
}

resto() {
cat << EOF
    Expense:Dining:Restuarant    $1 CAD
EOF
}

takeout() {
cat << EOF
    Expense:Dining:Takeout    $1 CAD
EOF
}

alcohol() {
cat << EOF
    Expense:Dining:Alcohol    $1 CAD
EOF
}

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

supplement() {
cat << EOF
    Expense:Health:Supplement    $1 CAD
EOF
}

dental() {
cat << EOF
    Expense:Health:Dental    $1 CAD
EOF
}
