#!/bin/bash
for run in {1..40}
do
  baseline=$(node nightmare.js 'http://www.nytimes.com/2016/test-page-1.html')
  secondary=$(node nightmare.js 'http://www.nytimes.com/2016/test-page-2.html')
  echo $baseline, $secondary
done
