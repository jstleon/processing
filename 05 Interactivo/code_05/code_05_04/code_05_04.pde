int x = 60;

void setup(){
size(500, 500);
background(0);
noStroke();

}

void draw(){
  background(0);
  if(mouseX < 250){
    fill(255, 0, 0);
    ellipse(width/2, height/2, 150, 150);
  }else{
    fill(0, 0, 255);
    rect(100, 100, 300, 300);
  }
}