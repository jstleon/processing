float numFrames = 30;
int offset = 250;
void setup(){
  size(800, 800);
  noStroke();
}

void draw(){
  fill(0);
  background(210, 10, 60);
  for(int x = offset; x < width-offset; x+= 4){
    for(int y = offset; y < height-offset; y+= 40){
    ellipse(x + random(-0.1, 0.1), y + random(-5, 5), 3, 3);
    }
  }
  if(frameCount <= numFrames){
   //saveFrame("images/circles####.jpg");
 }
}
