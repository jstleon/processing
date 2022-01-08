size(500, 500);

for(int y = 0; y <= height; y++){
  for(int x = 0; x < width; x++){
    stroke(x, y-100, x-y);
    point(x, y);
  }
}

save("imagen/code_4_31.png");
