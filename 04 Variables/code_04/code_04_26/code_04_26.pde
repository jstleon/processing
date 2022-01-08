size(500, 500);

background(30);
stroke(255);
strokeWeight(2);

for(int x = 0; x < width; x++){
  float n = norm(x, 0.0, width);
  float y = pow(n, 4);
  y *= width;
  point(x, y);
}
