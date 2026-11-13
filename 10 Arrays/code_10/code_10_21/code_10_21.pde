String [] energySource = {"Petroleo", "Carbón", "Gas", "Nuclear", "Renovable", "Hidroeléctricas"};
float[] consumo = {40.0, 23.0, 22.0, 8.0, 4.0, 3.0};

void setup(){
  size(1000, 1000);
  noStroke();
}

void draw(){
  float x = width * 0.1;
  float y = height * 0.9;
  float delta = width* 0.8/consumo.length;
  float w = delta * 0.8;
  background(255);
  for(float value : consumo){
    float h = map(value, 0, 100, 0, height*1.5);
    fill(210, 70, 50);
    rect(x, y-h, w, h);
    x = x + delta;
    
  }
    textSize(15);
    x = width * 0.1;
    y = height * 0.92;
    delta = width* 0.8/energySource.length;
    for(int i = 0; i < energySource.length; i++){
    fill(0);
    text(energySource[i], x, y);
    x += delta;
  }
  
  for(String value : energySource){
    println(value);
  }
  
}
  
