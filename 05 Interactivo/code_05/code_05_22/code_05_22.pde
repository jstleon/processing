void setup(){
  size(1000, 1000);
}

void draw(){
  background(0);
  stroke(180);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  noStroke();
  fill(240);
  
  if(mousePressed){
  fill(210, 0, 0);
  }
 
  if(mouseX < width/2 && mouseY < height/2){
    rect(0, 0, width/2, height/2);
  }else if(mouseX > width/2 && mouseY < height/2){
    rect(width/2, 0, width/2, height/2);
  }else if(mouseX < width/2 && mouseY > height/2){
    rect(0, width/2, width/2, height/2);
  }else if(mouseX > width/2 && mouseY > height/2){
    rect(width/2, height/2, width/2, height/2);
  } 
}
