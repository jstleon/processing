Spot sp;

void setup(){
  size(500, 500);
  noStroke();
  sp = new Spot(width/2, 100, 50, 5.5);
}

void draw(){
  fill(0, 15);
  rect(0, 0, width, height);
  sp.display();
  sp.move();
}

class Spot {
  float x, y;
  float diameter;
  float speed;
  int direction = 1;
  
  Spot(float xpos, float ypos, float diam, float sp){
    x = xpos;
    y = ypos;
    diameter = diam;
    speed = sp;
  }
  
    void move(){
    y += (speed * direction);
    if((y > (height - diameter/2)) || (y < diameter/2)){
      direction *= -1;
    }
  }
  
  void display(){
    fill(255);
    ellipse(x, y, diameter, diameter);
  } 
}
