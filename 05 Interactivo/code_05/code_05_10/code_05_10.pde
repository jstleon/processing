float r = 150;
float g = 0;
float b = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(r, g, b);
  stroke(255);
  line(width/2, 0, width/2, height);
  if(mouseX > width/2){
  r = r +1;
  }else{
  r = r -1;
  }
  r = constrain(r, 0, 255);
}
