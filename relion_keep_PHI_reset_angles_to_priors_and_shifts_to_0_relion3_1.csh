
set star_file=$1

sed -n '/data_particles/,$p' $star_file > data_temp.star

#copy headers to new file
sed -n '1,/data_particles/p' $star_file > $star_file:r_reset_angles_to_priors.star
echo ' ' > $star_file:r_reset_angles_to_priors.star
echo 'loop_' >> $star_file:r_reset_angles_to_priors.star

#copy column headers to new file
echo | grep '_rln*' data_temp.star >> $star_file:r_reset_angles_to_priors.star

#extract column data to temp file
echo | grep '.mrc' data_temp.star > $star_file:r_temp1.star


#print all data to new file 
echo | awk '{printf("%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%s\t%s\t%d\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%d\t%.6f\t%.6f\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $4, $5, "'0.000000'", "'0.000000'", $26, $27, $28, $29, $30, $31, $32)}' $star_file:r_temp1.star >> $star_file:r_reset_angles_to_priors.star

rm -rf $star_file:r_temp1.star data_temp.star
