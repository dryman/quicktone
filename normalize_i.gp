#set term svg
#set output "Ah_normalized.svg"

set datafile separator ","
avg(a,b,c,d)=(a+b+c+d)/4
f(b,o)=avg(column(b),column(b+1),column(b+2),column(b+3))-column(b+o)
g(b,o)=column(b)-column(b+o)
set xrange [] noextend
unset ytics
unset xtics
set for [i=1:4] paxis i tics
set for [i=1:4] paxis i range [-3:3]

set multiplot layout 2,2 title "Tone (I)"
unset key

set title "I - first tone"
c=17; plot 'res_ftf.csv' using (f(c,0)):(f(c,1)):(f(c,2)):(f(c,3)) \
 with parallel linecolor rgb "#EECC00CC" linewidth 2

set title "I - second tone"
c=21; plot 'res_ftf.csv' using (f(c,0)):(f(c,1)):(f(c,2)):(f(c,3)) \
 with parallel linecolor rgb "#EECC00CC" linewidth 2

set title "I - third tone"
c=25; plot 'res_ftf.csv' using (f(c,0)):(f(c,1)):(f(c,2)):(f(c,3)) \
 with parallel linecolor rgb "#EECC00CC" linewidth 2

set title "I - fourth tone"
c=29; plot 'res_ftf.csv' using (f(c,0)):(f(c,1)):(f(c,2)):(f(c,3)) \
 with parallel linecolor rgb "#EECC00CC" linewidth 2
