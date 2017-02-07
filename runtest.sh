#!/bin/bash

filename=results_$(date +%Y%m%d)_$(date +%H%M).csv
for counter in $(seq 1 10);
do
  echo $counter
  baseline=$(node nightmare.js 'https://www.e-food.gr/delivery/neo-hrakleio/e-fooders-caf')
  secondary=$(node nightmare.js 'https://www.e-food.gr/delivery/neo-irakleio/club-souvlaki')
  echo $baseline, $secondary >> $filename
done
