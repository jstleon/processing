int beginX = 30;
int beginY = 30;
int endX = 470;
int endY = 470;

float x = beginX;
float y = beginY;
float step = 0.01;
float pct = 0.0;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  if(pct < 1.0){
    x = beginX + ((endX - beginX) * pct);
    y = beginY + ((endY - beginY) * pct);
    pct += step;   
  }
  ellipse(x, y, 20, 20);
  println(pct);
}
