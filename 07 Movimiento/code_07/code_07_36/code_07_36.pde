size(1000, 1000);
background(0);
stroke(200);

float radius = 0.15;
float cx = width/2;
float cy = width/2;
float px = cx;
float py = cy;

for(float deg = 0; deg < 360 * 7; deg +=10){
  float angle = radians(deg);
  float x = cx + cos(angle) * radius;
  float y = cy + sin(angle) * radius;
  
  line(px, py, x, y);
  radius = radius * 1.045;
  
  px = x;
  py = y;
  strokeWeight(2);
}
