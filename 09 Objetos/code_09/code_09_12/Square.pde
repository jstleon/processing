class Square extends Shape{
  Square(float x_, float y_, float r_){
    super(x_, y_, r_);
  }
  
  void display(){
    rectMode(CENTER);
    fill(175);
    stroke(0);
    rect(x, y, r, r);
  }
}
