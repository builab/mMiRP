#!/bin/csh -f
# HB 2020/02/14
# # csh relion3_1_trim_dataoptics_star.csh in_star.star
# Output in_star_header.star and in_star_trim.star
#
set star_file=$1

sed -n '/data_particles/,$p' $star_file > $star_file:r_trim.star

sed -n '1,/data_particles/p' $star_file > $star_file:r_header.star

sed -i '$ d' $star_file:r_header.star

