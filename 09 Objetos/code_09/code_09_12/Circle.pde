class Circle extends Shape{
  color c;
  Circle(float x_, float y_, float r_, color c_){
    super(x_, y_, r_);
    c = c_;
  }
  void jiggle(){
    super.jiggle();
    r += random(-1, 1);
    r = constrain(r, 0, 500);
  }
  
  void changeColor(){
    c = color(random(255));
  }
  
  void display(){
    ellipseMode(CENTER);
    fill(c);
    stroke(0);
    ellipse(x, y, r, r);
  }
}
