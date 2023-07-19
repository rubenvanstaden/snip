#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

[[ -z $SNIPPETS ]] && echo "SNIPPETS env var not set" && exit 1

ledgersnip() {

    source "$SNIPPETS/ledger-entry.sh"
    source "$SNIPPETS/ledger-vegetable.sh"
    source "$SNIPPETS/ledger-fruit.sh"
    source "$SNIPPETS/ledger-health.sh"
    source "$SNIPPETS/ledger-expense.sh"

    case $2 in
    "td")
        td "${@:3}"
        ;;
    "heyorca")
        heyorca "${@:3}"
        ;;
    "tangerine")
        tangerine "${@:3}"
        ;;
    "amexcobalt")
        amexcobalt "${@:3}"
        ;;
    "amexgold")
        amexgold "${@:3}"
        ;;
    "youchoy")
        youchoy "${@:3}"
        ;;
    "gailan")
        gailan "${@:3}"
        ;;
    "yellowpotato")
        yellowpotato "${@:3}"
        ;;
    "garlic")
        garlic "${@:3}"
        ;;
    "greenonion")
        greenonion "${@:3}"
        ;;
    "broccoli")
        broccoli "${@:3}"
        ;;
    "alcohol")
        alcohol "${@:3}"
        ;;
    "income")
        income "${@:3}"
        ;;
    "scotia")
        scotia "${@:3}"
        ;;
    "coffee")
        coffee "${@:3}"
        ;;
    "resto")
        resto "${@:3}"
        ;;
    "takeout")
        takeout "${@:3}"
        ;;
    "metro")
        metro "${@:3}"
        ;;
    "taxi")
        taxi "${@:3}"
        ;;
    "streaming")
        streaming "${@:3}"
        ;;
    "software")
        software "${@:3}"
        ;;
    "internet")
        internet "${@:3}"
        ;;
    "mobile")
        mobile "${@:3}"
        ;;
    "travel")
        travel "${@:3}"
        ;;
    "course")
        course "${@:3}"
        ;;
    "carrot")
        carrot "${@:3}"
        ;;
    "yellowonion")
        yellowonion "${@:3}"
        ;;
    "pepper")
        pepper "${@:3}"
        ;;
    "ginger")
        ginger "${@:3}"
        ;;
    "lettuce")
        lettuce "${@:3}"
        ;;
    "spinach")
        spinach "${@:3}"
        ;;
    "tomato")
        tomato "${@:3}"
        ;;
    "mushroom")
        mushroom "${@:3}"
        ;;
    "corn")
        corn "${@:3}"
        ;;
    "cucumber")
        cucumber "${@:3}"
        ;;
    "asparagus")
        asparagus "${@:3}"
        ;;
    "edamame")
        edamame "${@:3}"
        ;;
    "skin")
        skin "${@:3}"
        ;;
    "acupunture")
        acupunture "${@:3}"
        ;;
    "supplement")
        supplement "${@:3}"
        ;;
    "dental")
        dental "${@:3}"
        ;;
    "apple")
        apple "${@:3}"
        ;;
    "pinapple")
        pinapple "${@:3}"
        ;;
    "orange")
        orange "${@:3}"
        ;;
    "grape")
        grape "${@:3}"
        ;;
    "jackfruit")
        jackfruit "${@:3}"
        ;;
    "pear")
        pear "${@:3}"
        ;;
    "banana")
        banana "${@:3}"
        ;;
    "bubble")
        bubble "${@:3}"
        ;;
    "lime")
        lime "${@:3}"
        ;;
    "lemon")
        lemon "${@:3}"
        ;;
    *)
        echo "You did not enter a number between 1 and 3."
        ;;
    esac
}

shsnip() {
    source "$SNIPPETS/bash.sh"
    if [[ "$2" == "match" ]]; then
        match "${@:3}"
    fi
}

csnip() {
    source "$SNIPPETS/c.sh"
    case $2 in
      "iter")
        iter "${@:3}"
        ;;
      "malloc")
        malloc "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

cppsnip() {
    source "$SNIPPETS/cpp.sh"
    case $2 in
      "iter")
        iter "${@:3}"
        ;;
      "range")
        range "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

gsnip() {
    source "$SNIPPETS/go.sh"
    case $2 in
      "if")
        iff "${@:3}"
        ;;
      "iter")
        iter "${@:3}"
        ;;
      "range")
        range "${@:3}"
        ;;
      "err")
        err "${@:3}"
        ;;
      "fn")
        fn "${@:3}"
        ;;
      "mt")
        mt "${@:3}"
        ;;
    "forselect")
        forselect "${@:3}"
        ;;
    "ordone")
        ordone "${@:3}"
        ;;
    "syncwait")
        syncwait "${@:3}"
        ;;
      *)
        echo "Snippet not implemented for C"
        ;;
    esac
}

rsnip() {
    source "$SNIPPETS/rust.sh"
    if [[ "$2" == "iflet" ]]; then
        iflet "${@:3}"
    fi
    if [[ "$2" == "match" ]]; then
        match "${@:3}"
    fi
    if [[ "$2" == "struct" ]]; then
        struct "${@:3}"
    fi
    if [[ "$2" == "fn" ]]; then
        fn "${@:3}"
    fi
    if [[ "$2" == "test" ]]; then
        test
    fi
    if [[ "$2" == "graph" ]]; then
        graph
    fi
}

if [[ "$1" == c ]]; then
    csnip "$@"
fi

if [[ "$1" == go ]]; then
    gsnip "$@"
fi

if [[ "$1" == rs ]]; then
    rsnip "$@"
fi

if [[ "$1" == bash ]]; then
    shsnip "$@"
fi

if [[ "$1" == ledger ]]; then
    ledgersnip "$@"
fi

exit 0
