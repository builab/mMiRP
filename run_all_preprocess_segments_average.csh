#!/usr/bin/env csh

foreach file (*.mrcs)
  csh ./preprocess_segment_averages_single_mrcs.csh $file 150
end

