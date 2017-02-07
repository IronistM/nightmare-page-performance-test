#!/bin/bash

# Some definitions to start with...
filename=results_$(date +%Y%m%d)_$(date +%H%M).csv
directory='Output'

# Do the runs!
for counter in $(seq 1 2); # Needed to work on nmh 4.3 bash
do
  echo $counter
  baseline=$(node nightmare.js 'https://www.e-food.gr/delivery/neo-hrakleio/e-fooders-caf')
  secondary=$(node nightmare.js 'https://www.e-food.gr/delivery/neo-irakleio/club-souvlaki')
  # Redirect output to the file defined a top
  echo $baseline, $secondary >> $directory/$filename
done
