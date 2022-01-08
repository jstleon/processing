float x;
float y;
float px;
float py;
float easing = 0.08;
   
void setup() {
     size(800, 800);
     stroke(0, 180);
     background(240);
}

void draw() {
   float targetX = mouseX;
   x += (targetX - x) * easing;
   float targetY = mouseY;
   y += (targetY - y) * easing;
   float grosor = dist(x, y, px, py);
   strokeWeight(grosor*3);
   
   if(mousePressed){
     line(x, y, px, py);
    }
    px = x; 
    py = y;  
  }

  
