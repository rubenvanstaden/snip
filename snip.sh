#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

[[ -z $SNIPPETS ]] && echo "SNIPPETS env var not set" && exit 1

esc="\033"
red="${esc}[31m"
reset="${esc}[0m"

cfg() {
	. "$SNIPPETS/cfg.sh"
	case $2 in
	"dex")
		dex "${@:3}"
		;;
	"rvs")
		rvs "${@:3}"
		;;
	*)
		echo "Snippet not implemented for hypermedia"
		;;
	esac
}

html() {
	. "$SNIPPETS/html.sh"
	case $2 in
	"htmx")
		htmx "${@:3}"
		;;
	"css")
		css "${@:3}"
		;;
	*)
		echo "Snippet not implemented for hypermedia"
		;;
	esac
}

ledger() {

	. "$SNIPPETS/ledger.sh"

	case $2 in
	"milk")
		milk "${@:3}"
		;;
	"blueberry")
		blueberry "${@:3}"
		;;
	"onion")
		onion "${@:3}"
		;;
	"pasta")
		pasta "${@:3}"
		;;
	"watermelon")
		watermelon "${@:3}"
		;;
	"avocado")
		avocado "${@:3}"
		;;
	"plums")
		plums "${@:3}"
		;;
	"butternut")
		butternut "${@:3}"
		;;
	"beetroot")
		beetroot "${@:3}"
		;;
	"chocolate")
		chocolate "${@:3}"
		;;
	"egg")
		egg "${@:3}"
		;;
	"cloths")
		cloths "${@:3}"
		;;
	"shoes")
		shoes "${@:3}"
		;;
	"jewelry")
		jewelry "${@:3}"
		;;
	"date")
		date "${@:3}"
		;;
	"rice")
		rice "${@:3}"
		;;
	"sugar")
		sugar "${@:3}"
		;;
	"salt")
		salt "${@:3}"
		;;
	"donggua")
		donggua "${@:3}"
		;;
	"daikon")
		daikon "${@:3}"
		;;
	"cherry")
		cherry "${@:3}"
		;;
	"bokchoy")
		bokchoy "${@:3}"
		;;
	"eggplant")
		eggplant "${@:3}"
		;;
	"tofu")
		tofu "${@:3}"
		;;
	"pork")
		pork "${@:3}"
		;;
	"beef")
		beef "${@:3}"
		;;
	"chicken")
		chicken "${@:3}"
		;;
	"heyorca")
		heyorca "${@:3}"
		;;
	"td")
		td "${@:3}"
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
	"potato")
		potato "${@:3}"
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
	"car")
		car "${@:3}"
		;;
	"subscription")
		subscription "${@:3}"
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

bash() {

	. "$SNIPPETS/bash.sh"

	if [[ "$2" == "match" ]]; then
		match "${@:3}"
	fi
	if [[ "$2" == "here" ]]; then
		here "${@:3}"
	fi
	if [[ "$2" == "shebang" ]]; then
		shebang "${@:3}"
	fi
}

c() {

	. "$SNIPPETS/c.sh"

	case $2 in
	"open")
		open "${@:3}"
		;;
	"makefile")
		makefile "${@:3}"
		;;
	"main")
		main "${@:3}"
		;;
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

cpp() {
	. "$SNIPPETS/cpp.sh"
	case $2 in
	"main")
		main "${@:3}"
		;;
	"iter")
		iter "${@:3}"
		;;
	"range")
		range "${@:3}"
		;;
	"treenode")
		treenode "${@:3}"
		;;
	*)
		echo "Snippet not implemented for C"
		;;
	esac
}

go() {
	. "$SNIPPETS/go.sh"

	case $2 in
	"makefile")
		makefile "${@:3}"
		;;
	"http")
		http "${@:3}"
		;;
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
	"gofn")
		gofn "${@:3}"
		;;
	"mx")
		multiplex "${@:3}"
		;;
	"poll")
		polling "${@:3}"
		;;
	"ordone")
		ordone "${@:3}"
		;;
	"syncwait")
		syncwait "${@:3}"
		;;
	"test")
		testunit "${@:3}"
		;;
	*)
		echo "Snippet not implemented for C"
		;;
	esac
}

rust() {

	. "$SNIPPETS/rust.sh"

	if [[ "$2" == "impl" ]]; then
		impl "${@:3}"
	fi

	if [[ "$2" == "vec" ]]; then
		vec "${@:3}"
	fi

	if [[ "$2" == "while" ]]; then
		whilefn "${@:3}"
	fi

	if [[ "$2" == "if" ]]; then
		iffn "${@:3}"
	fi

	if [[ "$2" == "whilelet" ]]; then
		whilelet "${@:3}"
	fi

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

case $1 in
"cfg")
	cfg "$@"
	;;
"html")
	html "$@"
	;;
"bash")
	bash "$@"
	;;
"ledger")
	ledger "$@"
	;;
"c")
	c "$@"
	;;
"go")
	go "$@"
	;;
"rust")
	rust "$@"
	;;
"cpp")
	cpp "$@"
	;;
*)
	echo ""
	echo -e "${red}ERROR${reset}: no snippets for language"
	;;
esac

exit 0
