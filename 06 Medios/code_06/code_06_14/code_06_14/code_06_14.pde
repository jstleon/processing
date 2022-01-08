import processing.pdf.*;

size(600, 600, PDF, "ellipses.pdf");
background(255);
stroke(0);

for(int i = 60; i < width-40; i+=40){
  for(int j = 60; j < height-40; j+=40){
  ellipse(i, j, 30, 30);
  }
}

exit();
