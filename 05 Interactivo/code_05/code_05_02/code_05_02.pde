void setup(){
size(800, 800);
background(0);
noStroke();
}

void draw(){
fill(0, 12);
rect(0, 0, width, height);

fill(255);
ellipse(mouseX, mouseY, 50, 50);
println("valor X: " + mouseX + " | valor Y: " + mouseY);
}