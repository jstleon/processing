int num = 50000;
float [] x = new float [num];
float [] y = new float [num];
PImage img;
float diam = 1;
void setup(){
  size(800, 800);
  img = loadImage("apollo_02.jpg");
  for(int i = 0; i < num; i++){
    x[i] = random(width);
    y[i] = random(height);
    
  }
  stroke(0);
  
}

void draw(){
  background(200, 50, 50);
  
  for(int i = 0; i < num; i++){
    color c = img.get(int(x[i]), int(y[i]));
    float b = brightness(c) /255.0;
    float speed = pow(b, 2) + 0.02;
    x[i] += speed;
    strokeWeight(diam);
    if(x[i] > width){
      
      x[i] = 0;
      y[i] = random(height);
    }
    
    point(x[i], y[i]);
  }
  
}
