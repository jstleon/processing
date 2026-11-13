float xnoise = 0.0;
float ynoise = 0.0;

float inc = 0.01;

void setup(){
size(800, 800);
noLoop();
}


void draw(){
for(int y = 0; y < height; y++){
  for(int x = 0; x < width; x++){
    float r = noise(xnoise, ynoise)*215;
    float g = noise(xnoise, ynoise)*155;
    float b = noise(xnoise, ynoise)*120;
    stroke(r, g, b);
    point(x, y);
    xnoise += inc;
  }
  xnoise = 0.0;
  ynoise += inc;
  }
}
