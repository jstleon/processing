float angle = 0.0;
   float angleDirection = 1;
   float speed = 0.005;
   void setup() {
     size(500, 500);
     smooth();
}
   void draw() {
     background(204);
     translate(250, 250);  // Move to start position
     rotate(angle);
     strokeWeight(20);
     line(0, 0, 120, 0);
     translate(120, 0);   // Move to next joint
     rotate(angle * 2.0);
     strokeWeight(10);
     line(0, 0, 80, 0);
     translate(80, 0);   // Move to next joint
     rotate(angle * 2.5);
     strokeWeight(6);
     line(0, 0, 40, 0);
     angle += speed * angleDirection;
     if ((angle > QUARTER_PI) || (angle < 0)) {
       angleDirection *= -1;
     }
}

void keyPressed(){
  saveFrame("image/ejemplo_7_21.jpg");
}
