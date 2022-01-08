boolean interruptor= false; 

void setup(){
size(500, 500);
strokeWeight(40);
stroke(255);
}

void draw(){
  background(210, 30, 50);
  line(100, 100, 400, 400);
  if(interruptor){
    line(400, 100, 100, 400);
  }
}

void keyPressed(){
  if(keyPressed){
    interruptor = !interruptor;
  }
}
