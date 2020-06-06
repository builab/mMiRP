#!/bin/bash
# Script to bin images for picking
# DOES NOT WORK YET
# HB 2019/12/16

inputDir='Movies'
outDir='Movies_bin4_test'


if [ ! -d "${outDir}" ]; then 
        mkdir ${outDir}
else
        echo "${outDir} exists !!! Continue in 2s anyway ...";
        sleep 2s
fi

rm xx

for i in ${inputDir}/*.mrc;
do
        foo=${i#${inputDir}/}
        echo "newstack -bin 4 $i ${outDir}/${foo}" >> xx
        #newstack -bin 4 $i ${outDir}/${foo}
done

parallel sh  ::: ./xx
