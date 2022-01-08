int x = 0;
int espacio = 120;
size(800, 800);
strokeWeight(20);
background(56, 30, 94);

for(int i = 0; i <= 255; i += 8){
stroke(242, 204-i, 47, i);
line(x, espacio, x, height - espacio);
x += 30;
}
