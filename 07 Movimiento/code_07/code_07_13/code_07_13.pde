float v = 0.0;
float inc = 0.02;
size(800, 800);
noStroke();
background(0);
fill(255);
noiseSeed(20);
for(int i = 0; i < width; i += 4){
  float n = noise(v)*550.0;
  rect(i, n, 3, 10);
  rect(i, 50+n, 3, 180);
  rect(i, 270+n, 3, 10);
  v = v + inc;
  
}
