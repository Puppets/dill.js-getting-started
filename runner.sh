#!/bin/bash

BASE="http://todomvc.com/"

tests=(
  # "architecture-examples/backbone"
  "architecture-examples/angularjs"
  # "architecture-examples/emberjs"
  # "architecture-examples/knockoutjs"
  # "architecture-examples/dojo"
  # "architecture-examples/yui"
  # "architecture-examples/agilityjs"
  # "architecture-examples/knockbackjs"
  # "architecture-examples/canjs"
  # "architecture-examples/maria"
  # "architecture-examples/polymer"
  # "architecture-examples/react"
  # "architecture-examples/spine"
  # "vanilla-examples/vanilladart/build"
  # "architecture-examples/gwt"
  # "architecture-examples/closure"
  # "dependency-examples/backbone_require"
  # "dependency-examples/flight"
  # "vanilla-examples/vanillajs"
  # "architecture-examples/jquery"
  # # Start of maroon examples
  # "labs/architecture-examples/cujo"
  # "labs/architecture-examples/montage"
  # "labs/architecture-examples/sammyjs"
  # "labs/architecture-examples/stapes"
  # "labs/architecture-examples/epitome"
  # "labs/architecture-examples/somajs"
  # "labs/architecture-examples/duel/www"
  # "labs/architecture-examples/kendo"
  # "labs/architecture-examples/puremvc"
  # "labs/architecture-examples/olives"
  # "labs/architecture-examples/plastronjs"
  # "labs/architecture-examples/dijon"
  # "labs/architecture-examples/rappidjs"
  # "labs/architecture-examples/extjs_deftjs"
  # "labs/architecture-examples/ariatemplates"
  # "labs/architecture-examples/enyo_backbone"
  # "labs/architecture-examples/angularjs-perf"
  # "labs/architecture-examples/sapui5"
  # "labs/architecture-examples/exoskeleton"
  # "labs/architecture-examples/atmajs"
  # "labs/architecture-examples/ractive"
  # "labs/architecture-examples/componentjs"
  # "labs/architecture-examples/vue"
  # "labs/architecture-examples/react-backbone"
  # "labs/architecture-examples/angular-dart/web"
  # "labs/architecture-examples/batman"
  # "labs/architecture-examples/typescript-backbone"
  # "labs/architecture-examples/typescript-angular"
  # "labs/architecture-examples/serenadejs"
  # "labs/architecture-examples/backbone_marionette"
  # "labs/architecture-examples/thorax"
  # "labs/dependency-examples/chaplin-brunch/public"
  # "labs/dependency-examples/knockoutjs_require"
  # "labs/dependency-examples/angularjs_require"
  # "labs/dependency-examples/canjs_require"
  # "labs/dependency-examples/troopjs_require"
  # "labs/dependency-examples/thorax_lumbar/public"
  # "labs/dependency-examples/somajs_require"
  # "labs/dependency-examples/durandal"
  # "labs/dependency-examples/lavaca_require"
)

mkdir "reports"

for i in "${tests[@]}"
do
  FILE_NAME="reports/"`echo "$i.txt" | sed "s/\//_/g"`
  rm "$FILE_NAME"

  ./node_modules/.bin/pioneer --format=todo_formatter.js --error_formatter=todo_error.js --urlPath="$BASE$i/" | tee -a "$FILE_NAME"
done