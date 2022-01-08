float offset = 100;
void setup(){
size(800, 800);
}

void draw(){
strokeWeight(75);
stroke(210);
background(95, 0, 195);

line(offset, offset, mouseX, height-offset);
line(width-offset, offset, offset, mouseY);


}

void mousePressed(){
save("images/demo_save_img.jpg");
}
