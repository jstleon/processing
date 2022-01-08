int scaleValue = 2;

int xoffset = 0;
int yoffset = 0;

void setup(){
  size(600, 600);
  stroke(0, 100);
}

void draw(){
  scale(scaleValue);
  translate(xoffset * (-width/scaleValue), yoffset * (-height/scaleValue));
  
  for(int i = 20; i < 200; i+= 20){
    for(int j = 20; j < 200; i+= 20){
    ellipse(i, j, 6, 6);
    
    }
    
  }
  

  
  }
  
  void setOffset(){
    save("lines-" + xoffset + "-" + yoffset + ".jpg");
    xoffset++;
    if(xoffset == scaleValue){
      xoffset = 0;
      yoffset++;
      if(yoffset == scaleValue){
      exit();
      }
    }
    background(204);
  }
