size(500, 500);

background(50);
stroke(255);

noFill();
for(int x = 0; x < width; x += 12){
  float n = norm(x, 0.0, width);
  float y = pow(n, 2);
  y *= width;
  strokeWeight(n*4);
  ellipse(x, y, 220, 220);
}
