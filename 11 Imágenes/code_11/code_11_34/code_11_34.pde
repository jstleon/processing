PImage frt;
size(500, 500);
frt = loadImage("Frutas.jpg");
background(0);
color red = color(255, 0, 0);

frt.set(0, 50, red);
frt.set(1, 51, red);
frt.set(2, 52, red);
frt.set(3, 53, red);
frt.set(4, 54, red);
frt.set(5, 55, red);
frt.set(6, 56, red);
frt.set(7, 57, red);
frt.set(8, 58, red);
image(frt, 0, 0);
