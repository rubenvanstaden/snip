#!/usr/bin/env bash

chocolate() {
cat << EOF
    Expense:Food:Snack:Chocolate    $1 CAD
EOF
}

blueberry() {
cat << EOF
    Expense:Food:Fruit:Blueberry    $1 CAD
EOF
}

onion() {
cat << EOF
    Expense:Food:Vegetable:Onion    $1 CAD
EOF
}

pasta() {
cat << EOF
    Expense:Food:Grain:Pasta    $1 CAD
EOF
}

watermelon() {
cat << EOF
    Expense:Food:Fruit:Watermelon    $1 CAD
EOF
}

avocado() {
cat << EOF
    Expense:Food:Vegetable:Avocado    $1 CAD
EOF
}

beetroot() {
cat << EOF
    Expense:Food:Vegetable:Beetroot    $1 CAD
EOF
}

plums() {
cat << EOF
    Expense:Food:Fruit:Plums    $1 CAD
EOF
}

milk() {
cat << EOF
    Expense:Food:Dairy:Milk    $1 CAD
EOF
}

egg() {
cat << EOF
    Expense:Food:Dairy:Egg    $1 CAD
EOF
}

cloths() {
cat << EOF
    Expense:Health:Cloths    $1 CAD
EOF
}

shoes() {
cat << EOF
    Expense:Health:Shoes    $1 CAD
EOF
}

jewelry() {
cat << EOF
    Expense:Health:Jewelry    $1 CAD
EOF
}

subscription() {
cat << EOF
    Expense:Subscription:Software    $1 CAD
EOF
}

resto() {
cat << EOF
    Expense:Social:Restaurant    $1 CAD
EOF
}

takeout() {
cat << EOF
    Expense:Social:Takeout    $1 CAD
EOF
}

alcohol() {
cat << EOF
    Expense:Social:Alcohol    $1 CAD
EOF
}

coffee() {
cat << EOF
    Expense:Social:Coffee    $1 CAD
EOF
}

festival() {
cat << EOF
    Expense:Social:Festival     $1 CAD
EOF
}

event() {
cat << EOF
    Expense:Social:Event    $1 CAD
EOF
}

date() {
cat << EOF
    Expense:Social:Date Night    $1 CAD
EOF
}

bubble() {
cat << EOF
    Expense:Social:Bubble Tea    $1 CAD
EOF
}

internet() {
cat << EOF
    Expense:Utility:Internet    $1 CAD
EOF
}

# Mobile data only.
mobile() {
cat << EOF
    Expense:Utility:Mobile    $1 CAD
EOF
}

car() {
cat << EOF
    Expense:Transport:Car    $1 CAD
EOF
}

metro() {
cat << EOF
    Expense:Transport:Metro    $1 CAD
EOF
}

skin() {
cat << EOF
    Expense:Health:Skin    $1 CAD
EOF
}

acupunture() {
cat << EOF
    Expense:Health:Acupuncture    $1 CAD
EOF
}

supplement() {
cat << EOF
    Expense:Health:Supplement    $1 CAD
EOF
}

dental() {
cat << EOF
    Expense:Health:Dental    $1 CAD
EOF
}

rice() {
cat << EOF
    Expense:Food:Grocery:Rice    $1 CAD
EOF
}

apple() {
cat << EOF
    Expense:Food:Fruit:Apple    $1 CAD
EOF
}

sugar() {
cat << EOF
    Expense:Food:Grocery:Sugar    $1 CAD
EOF
}

salt() {
cat << EOF
    Expense:Food:Grocery:Salt    $1 CAD
EOF
}

cherry() {
cat << EOF
    Expense:Food:Fruit:Cherry    $1 CAD
EOF
}

pinapple() {
cat << EOF
    Expense:Food:Fruit:Pinapple    $1 CAD
EOF

}

orange() {
cat << EOF
    Expense:Food:Fruit:Orange    $1 CAD
EOF

}

grape() {
cat << EOF
    Expense:Food:Fruit:Grape    $1 CAD
EOF

}

jackfruit() {
cat << EOF
    Expense:Food:Fruit:Jackfruit    $1 CAD
EOF

}

pear() {
cat << EOF
    Expense:Food:Fruit:Pear    $1 CAD
EOF

}

banana() {
cat << EOF
    Expense:Food:Fruit:Banana    $1 CAD
EOF

}

lime() {
cat << EOF
    Expense:Food:Fruit:Lime    $1 CAD
EOF

}

lemon() {
cat << EOF
    Expense:Food:Fruit:Lemon    $1 CAD
EOF

}

pork() {
cat << EOF
    Expense:Food:Meat:Pork    $1 CAD
EOF
}

beef() {
cat << EOF
    Expense:Food:Meat:Beef    $1 CAD
EOF
}

chicken() {
cat << EOF
    Expense:Food:Meat:Chicken    $1 CAD
EOF
}

tofu() {
cat << EOF
    Expense:Food:Vegetable:Tofu   $1 CAD
EOF
}

# Chinese winter melon
donggua() {
cat << EOF
    Expense:Food:Vegetable:Dong Gua   $1 CAD
EOF
}

# Chinese white radish
daikon() {
cat << EOF
    Expense:Food:Vegetable:Daikon   $1 CAD
EOF
}

bokchoy() {
cat << EOF
    Expense:Food:Vegetable:Bok Choy   $1 CAD
EOF
}

eggplant() {
cat << EOF
    Expense:Food:Vegetable:Eggplant   $1 CAD
EOF
}

garlic() {
cat << EOF
    Expense:Food:Vegetable:Garlic   $1 CAD
EOF
}

carrot() {
cat << EOF
    Expense:Food:Vegetable:Carrot $1    $2 CAD
EOF

}

yellowonion() {
cat << EOF
    Expense:Food:Vegetable:Yellow Onion      $1 CAD
EOF

}

# Yellow, Sweet
potato() {
cat << EOF
    Expense:Food:Vegetable:Potato      $1 CAD
EOF
}

butternut() {
cat << EOF
    Expense:Food:Vegetable:Butternut    $1 CAD
EOF
}

pepper() {
cat << EOF
    Expense:Food:Vegetable:Pepper    $1 CAD
EOF
}

ginger() {
cat << EOF
    Expense:Food:Vegetable:Ginger    $1 CAD
EOF
}

lettuce() {
cat << EOF
    Expense:Food:Vegetable:Lettuce    $1 CAD
EOF
}

spinach() {
cat << EOF
    Expense:Food:Vegetable:Spinach    $1 CAD
EOF
}

tomato() {
cat << EOF
    Expense:Food:Vegetable:Tomato    $1 CAD
EOF
}

mushroom() {
cat << EOF
    Expense:Food:Vegetable:Mushroom    $1 CAD
EOF
}

corn() {
cat << EOF
    Expense:Food:Vegetable:Corn    $1 CAD
EOF
}

cucumber() {
cat << EOF
    Expense:Food:Vegetable:Cucumber    $1 CAD
EOF
}

asparagus() {
cat << EOF
    Expense:Food:Vegetable:Asparagus    $1 CAD
EOF
}

edamame() {
cat << EOF
    Expense:Food:Vegetable:Edamame    $1 CAD
EOF
}

broccoli() {
cat << EOF
    Expense:Food:Vegetable:Broccoli    $1 CAD
EOF
}

greenonion() {
cat << EOF
    Expense:Food:Vegetable:Green Onion    $1 CAD
EOF
}

gailan() {
cat << EOF
    Expense:Food:Vegetable:Gai Lan     $1 CAD
EOF
}

youchoy() {
cat << EOF
    Expense:Food:Vegetable:You Choy     $1 CAD
EOF
}

heyorca() {
cat << EOF
2023/$1/$2 * HeyOrca
    Asset:Checking:Tangerine   $3 CAD
    Income:Salary
EOF
}

tangerine() {
cat << EOF
2023/$1/$2 * $3
    Asset:Checking:Tangerine
EOF
}

amexcobalt() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:Amex Cobalt
EOF
}

td() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:TD Infinite
EOF
}

amexgold() {
cat << EOF
2023/$1/$2 * $3
    Liability:Credit Card:Amex Gold
EOF
}

scotia() {
cat << EOF
2023/$1/$2 * $3
    Asset:Scotia:Checking
EOF
}

income() {
cat << EOF
2023/$1/$2 * $3
    Income:Salary
EOF
}
