float numFrames = 30;
int offset = 250;
void setup(){
  size(800, 800);
  background(190, 30, 100);
}

void draw(){
  strokeWeight(10);
  stroke(255);
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  //Salvar imágenes cada 5 frames
  if((frameCount % 5) == 0){
    println(frameCount);
   //saveFrame("images/draw####.jpg");
 }
}

  
