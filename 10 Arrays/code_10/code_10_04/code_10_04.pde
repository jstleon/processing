int num = 180;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(500, 500);
  noStroke();
  fill(255, 153); 
}

void draw() {
  background(51); 
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i/4, i/4);
  }
}
