float angle = 0.0;
   void setup() {
     size(500, 500);
}
   void draw() {
     translate(mouseX, mouseY);
     rotate(angle);
     rect(-30, -30, 60, 60);
     angle += 0.1;
}
