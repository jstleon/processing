int d = day();
int m = month();
int y = year();
String fecha = nf(d,2) + "/" + nf(m,2) + "/" + y;
text(fecha, 14, 55);
println(nf(d,2) + "/" + nf(m,2) + "/" + y);
