class Spot {
  float x, y;
  float diameter;
  float speed;
  float direction = 1;
  
Spot(float xpos, float ypos, float diam, float sp) {
x = xpos;
y = ypos;
diameter = diam;
speed = sp;
}

void move() {
y += (speed * direction);
if ((y > (height - diameter/2)) || (y < diameter/2)) {
direction *= -1;

  }
}

 void display() {
   ellipse(x, y, diameter, diameter);
    
}
  
  void colores(){
    if (direction == 1){
    fill(200, 0, 0);
    }else{
    fill(0, 0, 200);
    }
  }
}
