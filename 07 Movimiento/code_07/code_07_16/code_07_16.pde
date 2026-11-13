float power = 1.61833;
float d = 432;


void setup(){
size(1800, 1800);
noiseSeed(200);
drawing();
noStroke();
}

void draw(){
save("imagen/demo_002.jpg");
}

void drawing(){
for(int y = 0; y < height; y++){
  for(int x = 0; x < width; x++){
    float total = 0.0;
    for(float i = d; i >= 1; i = i/2.0){
      total +=noise(x/d, y/d)*d;
    }
    float turbulence = 43.2 * total/d;
    float base = (x * 0.00003)+(y* 0.003);
    float offset = base + (power* turbulence/256.0);
    float r = abs(cos(offset+0.3))*256.0;
    float g = abs(sin(offset+0.9))*256.0;
    float b = abs(sin(offset+0.6))*206.0;
    stroke(r,g,b);
    point(x, y);
    }
  }
}


