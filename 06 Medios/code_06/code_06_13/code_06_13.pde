boolean record = false;
float x =0, y=0;
float v = 0.0;
float unit = 0.0031;
int currentFrame;

void setup(){
  size(1000, 1000);
  background(190, 30, 50);
}

void draw(){
  noStroke();
  fill(190, 30, 50, 40);
  rect(0, 0, width, height);
  
  stroke(random(255), 0, 0);
  
  for(int i = 0; i < width; i +=1){
   float n = noise(v) * width;
   point(x+n, i+y);
   v +=unit;
   float grosor = (x + n) / 20;
   strokeWeight(grosor);
  }
  
  //Salvar cuando record es true.
  if((record) == true){
    int Totalframes = currentFrame+5;
      if(Totalframes >= frameCount && (record) == true){
        println("Imagen_salvada_" + frameCount);
        //saveFrame("images/draw####.jpg");
      }
    }
}

void mousePressed(){
  currentFrame = frameCount;
  record = !record;
  
}
