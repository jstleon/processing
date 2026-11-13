float x, y, w;
float spdX, spdY, theta, rotSpd;

float cornerRadiusOffset, dynamicRadius, collisionTheta;

void setup(){
  size(1000, 1000);
  x = width/2;
  y = height/2;
  w = 250;
  spdX = 2.1;
  spdY = 1.5;
  rotSpd = PI/180;
  fill(0, 175, 175);
  noStroke();
}

void draw(){
  background(255, 127, 0);
  pushMatrix();
  translate(x, y);
  rotate(theta);
  rect(-w/2, -w/2, w, w);
  popMatrix();
  
  x += spdX;
  y += spdY;
  theta += rotSpd;
  collide();
}

void collide(){
  cornerRadiusOffset = w/2/cos(PI/4)-w/2;
  
  dynamicRadius = abs(sin(collisionTheta)*cornerRadiusOffset);
  
  if(x > width - w/2 - dynamicRadius){
    spdX *=-1;
    rotSpd *=-1;
  }
  else if(x < w/2 + dynamicRadius){
    spdX *=-1;
    rotSpd *=-1;
  }
  
  if(y > height - w/2 - dynamicRadius){
    spdY *=-1;
    rotSpd *=-1;
  }
  else if(y < w/2 + dynamicRadius){
    spdY *=-1;
    rotSpd *=-1;
  }
  collisionTheta +=rotSpd*2;
}
