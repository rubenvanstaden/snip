#!/usr/bin/env bash
#
# Description and purpose of script.

iflet() {
cat << EOF
if let Some($1) = $2 {
}
EOF
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
