#!/usr/bin/env bash

main() {
cat << "EOF"
#include <stdio.h>

int main() {

    return 0;
}
EOF

}

iter() {
cat << EOF
for (int i = 0; i < $1; i++) {
}
EOF

}

# snip c malloc int
malloc() {
cat << EOF
#include <stdlib.h>
$1 *arr = ($1 *)malloc(n * sizeof($1));
if (arr == NULL) {
    printf("Error: Memory allocation failed.");
    return 1;
}
free(arr);
EOF

}

assert() {
cat << EOF
#include <stdbool.h>
#include <string.h>

bool assert_arrays_equal(int *arr1[], int *arr2[], int size) {
    if (memcmp(arr1, arr2, size * sizeof(int)) == 0) {
        return true;
    } else {
        return false;
    }
}
EOF

}

swap() {
cat << "EOF"
void swap(int *nums, int i, int j) {
    int t = nums[i];
    nums[i] = nums[j];
    nums[j] = t;
}
EOF

}
