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

queue() {
cat << "EOF"
#include <queue>
std::queue<int> q;
q.push();

while (!q.empty()) {

    int u = q.front();
    q.pop();

    std::cout << u << std::endl;
}
EOF

}

binary-search() {
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
}

tree-bfs() {
cat << "EOF"
void bfs(Node *root) {

    std::queue<Node*> queue;
    queue.push(root);

    while (!queue.empty()) {

        int size = queue.size();

        for (size_t i = 0; i < size; i++) {

            Node *node = queue.front();
            queue.pop();

            std::cout << node->data << std::endl;

            if (node->left) {
                queue.push(node->left);
            }

            if (node->right) {
                queue.push(node->right);
            }
        }
    }
}
EOF
}

tree-node() {
cat << "EOF"
struct Node {
    int data;
    Node *left;
    Node *right;

    Node(int val) : data(val), left(nullptr), right(nullptr) {}
};
EOF
}

tree-test() {
cat << "EOF"
void test_test() {

    /*
              1
            /   \
           2     3
          / \   / \
         4   5 6   7
    */

    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    root->right->left = new Node(6);
    root->right->right = new Node(7);

    // Add test function here.
}
EOF
}

prefix-sum() {
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
}

sliding-window() {
cat << "EOF"
int fn(vector<int>& arr) {

    int left = 0, ans = 0, curr = 0;

    for (int right = 0; right < arr.size(); right++) {

        // do logic here to add arr[right] to curr

        while (WINDOW_CONDITION_BROKEN) {
            // remove arr[left] from curr
            left++;
        }

        // update ans
    }

    return ans;
}
EOF
}

two-pointer() {
cat << "EOF"
int fn(vector<int>& arr) {

    int left = 0;
    int right = int(arr.size()) - 1;
    int ans = 0;

    while (left < right) {
        // do some logic here with left and right
        if (CONDITION) {
            left++;
        } else {
            right--;
        }
    }

    return ans;
}
EOF
}
