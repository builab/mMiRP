#!/bin/csh

foreach file (*.mrcs)
  echo "csh ./preprocess_segment_averages_single_mrcs.csh $file 150"
  csh ./preprocess_segment_averages_single_mrcs.csh $file 150
end
