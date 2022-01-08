size(1000, 1000);

colorMode(HSB, 360, 100, 100);

for(int i = -width; i < width*2; i++){
float newHue = 95 - (i*0.05);
stroke(newHue, 100, 80);
line(i, 0, i, height);

}
