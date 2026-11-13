void setup(){
  size(1000, 1000);
}

void draw(){
  background(0);
  stroke(210);
  strokeWeight(38);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  
  imageMode(CENTER);
  PImage cross = get();
  
  image(cross, width/2, height/2, 500, 500);
}
