size(500, 500);

noFill();

for(int x = 0; x < width; x ++){
  float n = norm(x, 0.0, width);
  float val = n * 255.0;
  stroke(val);
  line(x, 0, x, height/2);
  float valSquare = pow(n, 4) *255.0;
  stroke(valSquare);
  line (x, height/2, x, height);
}
