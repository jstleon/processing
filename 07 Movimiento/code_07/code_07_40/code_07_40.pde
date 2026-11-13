float angle = 0.0;
float angleDirection = 1;
float speed = 0.005;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(204);
  
  translate(width/2, height/2);  // Move to start position
  rotate(angle);
  strokeWeight(20);
  line(0, 0, 250, 0);

  translate(250, 0);   // Move to next joint
  rotate(angle * 4.0);
  strokeWeight(10);
  line(0, 0, 120, 0);

  translate(120, 0);   // Move to next joint
  rotate(angle * 8);
  strokeWeight(6);
  line(0, 0, 80, 0);

  angle += speed * angleDirection;
 
  if ((angle > PI) || (angle < 0)) {
    angleDirection *= -1;
  }
  
}
