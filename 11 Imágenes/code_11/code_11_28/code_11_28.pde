PImage frutas;

void setup(){
size(1200, 800);
frutas = loadImage("Frutas.jpg");
}

void draw(){
noStroke();
image(frutas, 0, 0);
PImage cortada = get(100, 200, 300, 400);
//fill(c);
rect(30, 30, 60, 740);
image(cortada, 400, 400);
}
