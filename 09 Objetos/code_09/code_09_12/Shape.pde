class Shape{
  float x;
  float y;
  float r;
  
  Shape(float x_, float y_, float r_){
    x = x_;
    y = y_;
    r = r_;
  } 
  
  void jiggle(){
    x += random(-3, 3);
    y += random(-3, 3);
  }
  
  void display(){
    point(x, y);
  }
}
