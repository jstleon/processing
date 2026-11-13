void setup(){
  size(800, 800);
  noStroke();
  background(0);
  
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  
  float r = random(180, 255);
  float g = random(100, 125);
  float b = random(100, 155);
  
  fill(r, g, b, 150);
  float d = random(120);
  ellipse(random(width), random(height), d, d);
}
