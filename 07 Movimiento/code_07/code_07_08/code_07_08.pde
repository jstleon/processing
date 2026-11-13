float x = 20.0;
float y = 20.0;
float targetX = 480.0;
float targetY = 480.0;
float easing = 0.01;

void setup(){
  size(500, 500);
  noStroke();
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  float d = dist(x, y, targetX, targetY);
  if(d > 1.0){
    x +=(targetX-x) * easing;
    y +=(targetY-y) * easing;
  }
  fill(255);
  ellipse(x, y, 20, 20);
}
