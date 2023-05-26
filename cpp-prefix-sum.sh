#!/usr/bin/env bash

cat << "EOF"
vector<int> fn(vector<int>& arr) {

    vector<int> prefix(arr.size());
    prefix[0] = arr[0];

    for (int i = 1; i < arr.size(); i++) {
        prefix[i] = prefix[i - 1] + arr[i];
    }

    return prefix;
}
EOF
