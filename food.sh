#!/usr/bin/env bash

pork() {
cat << EOF
    Expense:Food:Meat:Pork    $1 CAD
EOF
}

beef() {
cat << EOF
    Expense:Food:Meat:Beef    $1 CAD
EOF
}

chicken() {
cat << EOF
    Expense:Food:Meat:Chicken    $1 CAD
EOF
}
