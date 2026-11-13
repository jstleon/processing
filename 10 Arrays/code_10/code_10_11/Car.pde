class Car{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display(){
    float offset = 27;
    rectMode(CENTER);
    fill(100);
    // Ruedas
    rect(xpos + offset, ypos + offset, 25, 10, 2);
    rect(xpos - offset, ypos + offset, 25, 10, 2);
    rect(xpos - offset, ypos - offset, 25, 10, 2);
    rect(xpos + offset, ypos - offset, 25, 10, 2);
    // Chasis
    fill(c);
    rect(xpos, ypos, 90, 50, 5);
    // Luna delantera
    fill(50);
    rect(xpos + offset-5, ypos, 20, 40, 2);
    // Luna trasera
    fill(50);
    rect(xpos - offset, ypos, 12, 37, 2);
  }
  
  void drive(){
    xpos += xspeed;
    if(xpos > width){
      xpos = 0;
    }
  }
}
