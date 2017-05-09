set xrange [0:105]
set yrange [0:25]

set terminal pngcairo size 800,600 enhanced font "Verdana,10"
set output 'prah.png'

set key left top

set arrow from 57,graph(0,0) to 57,graph(1,1) nohead dashtype 2 lw 2 lc "red"
set label 1 at 55, -0.4 'ERR'

set arrow from 25.5,graph(0,0) to 25.5,13.5 nohead dashtype 2
set label 2 at 23.5, -0.45 'FRR=0'

set arrow from 88,graph(0,0) to 88,13 nohead dashtype 2
set label 3 at 86, -0.45 'FAR=0'

set style arrow 1 head filled size screen 0.025,30,45 ls 1
set arrow from 55,12 to 32,12 arrowstyle 1 lc "dark-green" lw 3
set arrow from 60,12 to 83,12 arrowstyle 1 lc "blue" lw 3

set xlabel "Prah citlivosti [%]" font "Verdana,12"
set ylabel "Percento chýb\nFAR / FRR [%]" font "Verdana,12"

plot '+' using 1:(exp(0.053*($1-39))-0.5) with lines lw 2 lc "blue" title "FRR",\
	 ''  using 1:(1/(exp(0.053*($1-75)))-0.5) with lines lw 2 lc "dark-green" title "FAR",\
	 1/0 t "Prah" dashtype 2 lc "red" lw 2
