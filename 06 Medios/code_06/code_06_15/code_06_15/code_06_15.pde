import processing.pdf.*;

size(600, 600);

beginRecord(PDF, "ellipses_color_sizes.pdf");
background(255);
fill(200);
noStroke();

for(int i = 60; i < width-40; i+=40){
  for(int j = 60; j < height-40; j+=40){
    int red = int(random(0, 255));
    int diam = int(random(5, 35));
    fill(red, 50, 110);
  ellipse(i, j, diam, diam);
  }
}

endRecord();
