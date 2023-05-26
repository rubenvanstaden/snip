#!/usr/bin/env bash

cat << "EOF"
int fn(vector<int>& arr, int target) {

    int left = 0;
    int right = int(arr.size()) - 1;

    while (left <= right) {

        int mid = left + (right - left) / 2;

        if (arr[mid] == target) {
            // do something;
            return mid;
        }

        if (arr[mid] > target) {
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }
    
    // left is the insertion point
    return left;
}
EOF
