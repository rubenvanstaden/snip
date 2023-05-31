#!/usr/bin/env bash

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
