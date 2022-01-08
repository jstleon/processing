import processing.pdf.*;

boolean saveOneFrame = false;

void setup(){
  size(600, 600);
}

void draw(){
  background(0);
  if(saveOneFrame == true){
    beginRecord(PDF, "images/ellipse-####.pdf");
  }


noStroke();

for(int i = 60; i < width-40; i+=40){
  for(int j = 60; j < height-40; j+=40){
   
    int red = int(random(0, 255));
    int diam = int(random(5, 30));
    fill(red, 40, 120 );
    ellipse(i, j, diam, diam);
  }
}
if(saveOneFrame == true){
endRecord();
saveOneFrame = false;
  }
}

void mousePressed(){
  saveOneFrame = true;
}
