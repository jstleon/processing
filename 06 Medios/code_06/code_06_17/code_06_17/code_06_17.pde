import processing.pdf.*;

void setup(){
size(600, 600);
background(255);
}

void draw(){
  stroke(0, 20);
  strokeWeight(1);
  line(mouseX, 0, width-mouseY, height);
}

void keyPressed(){
  if(key=='B' || key=='b'){
    beginRecord(PDF, "lines.pdf");
    background(255);
  }else if(key=='E' || key =='e'){
    endRecord();
    exit();
  }
}
