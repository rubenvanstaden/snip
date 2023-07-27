#!/usr/bin/env bash

iflet() {
cat << EOF
    if let Some($1) = $2 {
    }
EOF
}

impl() {
cat << EOF
impl $1 {

    pub fn new() -> Self {
        $1 {}
    }
}
EOF
}

iffn() {
cat << EOF
if $1 {
}
EOF
}

whilefn() {
cat << EOF
    while $1 {
    }
EOF
}

whilelet() {
cat << EOF
    while let $1 = $2 {
    }
EOF
}

vec() {
    echo "let mut $1 = vec![false; 5];"
}

match() {
cat << EOF
    match $1 {
        Some($2) => $3,
        None => $4,
    }
EOF
}

struct() {
cat << EOF
    struct $1 {
        $2: $3,
    }
EOF
}

fn() {
cat << EOF
    fn $1($2) -> $3 {
    }
EOF
}

test() {
cat << EOF
#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test() {
    }
}
EOF
}

graph() {
cat << "EOF"
use std::collections::{HashMap};

type Id = i32;

pub struct Graph {
    pub nodes: HashMap<Id, Vec<Id>>,
}

impl Graph {
    
    pub fn new() -> Self {
        Graph { nodes: HashMap::new() }
    }
}
EOF
}
