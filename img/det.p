set xrange [0.00001:100]
set yrange [0.00001:100]
set logscale xy

set terminal pngcairo size 800,600 enhanced font "Verdana,10"
set output 'det.png'

set key top left

set xlabel "Miera Chybového Prijatia\n(FAR) [%]" font "Verdana,12"
set ylabel "Miera Chybového Odmietnutia\n(FRR) [%]" font "Verdana,12"

set format x "10^%L"
set format y "10^%L"

plot 'det.dat' using 1:2 with lines lw 2 lc "black" title "DET",\
	 x t "EER" lc "red"
