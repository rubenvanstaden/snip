#!/usr/bin/env bash

shebang() {
cat << "EOF"
#!/usr/bin/env bash
EOF
}

here() {
cat << "OUT_DOC"
cat << EOF
EOF
OUT_DOC
}

match() {
cat << "EOF"
case $1 in
  "apple")
    echo "You entered apple."
    ;;
  "banana")
    echo "You entered banana."
    ;;
  "cherry")
    echo "You entered cherry."
    ;;
  *)
    echo "You did not enter apple, banana, or cherry."
    ;;
esac
EOF

}
