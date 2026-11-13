Car[]cars = new Car[12];

void setup(){
  size(1000, 1000);
  for(int i = 0; i < cars.length; i++){
    cars[i] = new Car(color(
    random(190, 255), random(190), random(190) ),
    0, i*height/cars.length, random(5, 20));
  }
}

void draw(){
  background(0);
  for(int i = 0; i < cars.length; i++){
    cars[i].drive();
    cars[i].display();
  }
}
