#!/bin/bash
for run in {1..40}
do
  baseline=$(node nightmare.js 'http://www.sbx.nytimes.com/tools/testpages/baselineWithAds.html')
  #secondary=$(node nightmare.js 'http://www.sbx.nytimes.com/tools/testpages/mainWithSecondaryAndAds.html')
  echo $baseline #,$secondary
done
