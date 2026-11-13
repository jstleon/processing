Car myCar1;
Car myCar2;
Car myCar3;

void setup(){
 size(1200,900);
 smooth();
myCar1 = new Car(color(255,255,0, 100), 30, 70, 8, 170, 90);
myCar2 = new Car(color(200,30,240,100), 200, 400, 26, 270, 130);
myCar3 = new Car(color(100,60,40,100), 700, 770, 14, 150, 80);
 //frameRate(30);
}

void draw(){
  background(0);
  // Operate Car Object
  myCar1.move();
  myCar2.move();
  myCar3.move();

  myCar1.display();
  myCar2.display();
  myCar3.display();
  }
