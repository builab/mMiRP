#!/bin/csh
# Load imod, bsoft and relion
# With the module command, you need to source
# source ~/run_all_preprocess_segments_average.csh

module load imod
module load bsoft
module load relion/3.0b-jan19

foreach file (*.mrcs)
  echo "csh ./preprocess_segment_averages_single_mrcs.csh $file 150"
  csh ./preprocess_segment_averages_single_mrcs.csh $file 150
end
