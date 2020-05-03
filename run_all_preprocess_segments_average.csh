#!/bin/csh
# Load imod, bsoft and relion

module load imod
module load bsoft
module load relion/3.0b-jan19

foreach file (*.mrcs)
  echo "csh ./preprocess_segment_averages_single_mrcs.csh $file 150"
  csh ./preprocess_segment_averages_single_mrcs.csh $file 150
end
