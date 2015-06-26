# Template adapted from http://youinfinitesnake.blogspot.sg/2011/02/attractive-scientific-plots-with.html

# Note you need gnuplot 4.4 for the pdfcairo terminal.
set terminal pdfcairo font "Gill Sans,9" linewidth 4 rounded fontscale 0.9

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 

set xtics nomirror
set ytics nomirror

set style line 1 lt rgb "#A00000" lw 2 pt 1
set style line 2 lt rgb "#00A000" lw 2 pt 6
set style line 3 lt rgb "#5060D0" lw 2 pt 2
set style line 4 lt rgb "#F25900" lw 2 pt 9

set output "amdahl.pdf"
set xlabel "Number of processes"
set ylabel "Speedup factor"

set key top left

# Speed up factor is inverse
T(f, N) = 1.0/(f + 1.0/N * (1 - f))

set xrange [1:100]
set yrange [0:]

plot \
T(0.10, x) linestyle 1 title "f = 10%", \
T(0.05, x) linestyle 2 title "f = 5%", \
T(0.01, x) linestyle 3 title "f = 1%", \
x          linestyle 4 title "Perfect scaling"

