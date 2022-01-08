size(500, 500);

for(int y = 5; y <= height; y*= 1.2){
  for(int x = 1; x < width; x+= 5){
    line(x, y, x, y-2);
  }
}
