float angle = 0.0;
float speed = 0.03;
float radius = 500.0;

void setup(){
  size(1080, 1080);
  noStroke();
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  angle += speed;
  float sinVal = sin(angle);
  float yoffset = sinVal * radius;
  ellipse(width/2, height/2 + yoffset, 80, 80);
  println(yoffset);
}
