#!/usr/bin/env bash

main() {
cat << EOF
#include <iostream>
#include <unordered_map>
#include <string>
#include <set>
#include <vector>

int main() {

    return 0;
}
EOF

}

build() {
cat << EOF
clang++ -MJ compile_commands.json -std=c++20 -stdlib=libc++ -Wall -Wextra -Wpedantic src/main.cpp -o bin/run
EOF

}
