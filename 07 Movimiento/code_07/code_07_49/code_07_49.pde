float r = 200;
float angulo = 0.0;

void setup(){
  size(1000,1000);
   background(0);
   //colorMode(HSB);
   frameRate(30);
}

void draw(){
  noStroke();
  fill(0,18);
  rect(0,0,width,height);
  //Polar to cartesian conversión
  
  float x = r * cos (angulo);
  float y = r * sin (angulo)* cos (angulo)+PI;
  translate(width/2, height/2);
  rotate(angulo);
  drawEllipses(x/2.6, y/2.6, r/2);  
  drawEllipses(x, y, r/3);
  drawEllipses(x*1.61833, y*1.61833, r/5);
  drawEllipses(x*2.0, y*2.0, r/10);
  
  angulo += 0.09;
}


void drawEllipses(float x, float y, float dim){
    stroke(255,150);
    //fill(x*0.1+angulo, x*0.1+y*0.2, x*0.3+y*0.2, 105);
    //ellipse(x, y,dim,dim);
    ellipse(x, y,dim,dim);
    //ellipse(x, -y,dim,dim);
    ellipse(-x, -y,dim,dim);
    }
