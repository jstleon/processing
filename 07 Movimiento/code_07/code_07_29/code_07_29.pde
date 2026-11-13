float angle = 0.0;
   void setup() {
     size(500, 500);
     smooth();
}
   void draw() {
     rotate(angle);
     translate(mouseX, mouseY);
     rect(-30, -30, 60, 60);
     angle += 0.1;
}
