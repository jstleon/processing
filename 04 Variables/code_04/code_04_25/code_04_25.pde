void setup(){
size(500, 500);
}

void draw(){
  background(0);
    for(int i = 0; i < width; i +=10){
      stroke(255);
      line(i, 0, i, height);
    }
}
