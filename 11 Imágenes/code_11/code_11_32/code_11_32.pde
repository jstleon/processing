

size(500, 500);
background(200, 0, 0);

for(int i = 0; i < 250; i++){
  for(int j = 0; j < 250; j++){
    color c = color((i + j) * 0.4);
    set(125 + i, 120 + j, c);
  }
}
