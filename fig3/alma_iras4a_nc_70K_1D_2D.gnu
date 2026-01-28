set terminal pngcairo enhanced font "Arial,12"
set output "alma_iras4a_nc_70K_1D_2D.png"
#set terminal postscript enh color "Helvetica" 25
#set output "alma_iras4a_nc.eps"
#set title "CO 3-2 Mix0.1 10^5 100K" font "Helvetica,15"
set logscale x
set xrange [0.1:10] #[0.1:10]
set xtics 10
set mxtics 10
#set xzeroaxis lt 1 lw 2
set key  left top #at 0.4,-0.5
#set key spacing 1
set key box lt -1 lw 1
#set style rect fc lt -1 fs solid 0.15 noborder
#set obj rect from 20, graph 0 to 100, graph 1 behind

#set lmargin 10
#set rmargin 2

#set origin 0.0,0.0
#unset title
#set bmargin 0
#set tmargin 0
set ylabel "Polarization Percentage (%)"
set xlabel "Optical Depth"
set ytics ("1.0" -1, "0.8" -0.8, "0.6" -0.6, "0.6" -0.6, "0.4" -0.4, "0.2" -0.2, "0" 0)
set mytics 2
set yrange [0:-0.6]
#set label "2D"   at 0.2,1 font "Helvetica"
#set label "1D"   at 0.2,-2 font "Helvetica"

set label "n_{H_2} = 1 x 10^{5} cm^{-3}" at 0.5,-0.3 tc rgb "black" 
set label "n_{H_2} = 3 x 10^{5} cm^{-3}" at 1,-0.12 tc rgb "red"
set label "n_{H_2} = 5 x 10^{5} cm^{-3}" at 3.3,-0.09 tc rgb "blue"

#plot 'c3.6[4][1D][1.00e+05][0.4PI][70K][2.725K]co.dat' using 1:2 title "CO 1-0 1 x 10^{5} cm^{-3}" with lines lw 3 lc "black" dt 1
 plot 'c3.6[4][1D][1.00e+05][0.4PI][70K][2.725K]co.dat' using 6:7 title "Toroidal magnetic field" with lines lw 3 lc "black" dt 1,\
	'c3.6[4][2D][1.00e+05][0.4PI][70K][2.725K]co.dat' using 6:($7*-1) title "Poloidal mangetic field" with lines lw 3 lc "black" dt (10,10,10,10),\
        'c3.6[4][1D][3.00e+05][0.4PI][70K][2.725K]co.dat' using 6:7 title "" with lines lw 3 lc "red" dt 1,\
        'c3.6[4][2D][3.00e+05][0.4PI][70K][2.725K]co.dat' using 6:($7*-1) title "" with lines lw 3 lc "red" dt (10,10,10,10),\
        'c3.6[4][1D][5.00e+05][0.4PI][70K][2.725K]co.dat' using 6:7 title "" with lines lw 3 lc "blue" dt 1,\
        'c3.6[4][2D][5.00e+05][0.4PI][70K][2.725K]co.dat' using 6:($7*-1) title "" with lines lw 3 lc "blue" dt (10,10,10,10)
#pause -1
reset
