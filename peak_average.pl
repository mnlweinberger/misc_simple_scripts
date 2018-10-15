##################################################################
# This script takes a file with peaks and coverage and prints out
# average coverage for each peak into an outfile.
# 
# The results are therefore peak_name: average
#
# example: 
# chr1_43777992_43778155 1
# chr1_43777992_43778155 2
# results: 
# chr1_43777992_43778155:1.5
#
###################################################################

use strict;

# open input file
if (scalar(@ARGV) < 2) {die "USAGE: missing files\n";}
my ($inFileName, $outFileName) = @ARGV;
open IN, "<$inFileName" or die "can't open '$inFileName'";
open OUT, ">$outFileName" or die "can't open '$outFileName'";

my @peak = <IN>;
my $peak;
my $counter=1;
my $sum=0;
my $ref_peak="";
my $current_peak="";

foreach $peak (@peak){
	if ($peak =~m/(chr\d+_+\d+_\d+)\s+(\d+)/) {
	$current_peak = $1;
	my $num = $2;
		if ($current_peak ne $ref_peak){
		print OUT "$ref_peak\:";
		print OUT ($sum/$counter)."\n";
		$sum=$num;
		$counter=1;
		$ref_peak = $current_peak;
		} else {
		$sum=$sum+$num;
		$counter++;
		}
	}
}
		

print OUT $current_peak."\:";
print OUT $sum/($counter)."\n";

close IN;
close OUT;



