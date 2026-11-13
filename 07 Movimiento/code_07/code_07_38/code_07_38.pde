float angle = 0.0; // Changing angle
float speed = 0.01; // Speed of growth

int multRadianes = 5;

void setup() {
size(1920, 1080);
noStroke();
smooth();

}
void draw() {
background(0);
for(int i = 0; i < 13; i++){
//circlePhase(0.0);
circlePhase(radians(multRadianes* i));
}
angle += speed;
//saveFrame("movie/vesica_piscis_####.png");
}
void circlePhase(float phase) {
stroke(255, 30);
  float diameter = 100 + (sin(angle + phase) * width-850);
float r = map(sin(angle + radians(45)), -1.0, 1.0, 120.0, 200.0);
float g = map(sin(angle + radians(90)), -1.0, 1.0, 30.0, 55.0);
float b = map(sin(angle + radians(135)), -1.0, 1.0, 30.0, 55.0);
float a = map(sin(angle + radians(180)), -1.0, 1.0, 25.0, 35.0);
fill(r, g, b, a);
ellipse(640, height/2, diameter, diameter);

r = map(sin(angle + radians(45)), -1.0, 1.0, 30.0, 55.0);
g = map(sin(angle + radians(90)), -1.0, 1.0, 30.0, 55.0);
b = map(sin(angle + radians(135)), -1.0, 1.0, 120.0, 200.0);
a = map(sin(angle + radians(180)), -1.0, 1.0, 25.0, 35.0);
fill(r, g, b, a);
ellipse(1280, height/2, diameter, diameter);
}
