float angle = 0.0;
void setup(){
size(1000, 1000);
}
  
void draw() {
     float sinval = sin(angle);
     println(sinval);
     float gray = map(sinval, -1, 1, 0, 255);
     background(gray);
     angle += 0.05;
}
