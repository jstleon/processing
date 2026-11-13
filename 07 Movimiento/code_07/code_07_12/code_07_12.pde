void setup(){
  size(800, 800);
}

void draw(){
  background(204);
  for(int x = 0; x < width; x += 10){
    float mx = mouseX/50;
    float offsetA = random (-mx, mx);
    float offsetB = random (-mx, mx);
    
    line(x + offsetA, 0, x - offsetB, height);
  }
}
