void setup(){
size(800, 800);
//noStroke();
}

void draw(){
//background(0);
fill(255);
ellipse(mouseX, mouseY, 50, 50);
println("valor X: " + mouseX + " | valor Y: " + mouseY);
}