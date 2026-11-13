Shape [] shapes = new Shape [20];

void setup(){
  size(1000, 1000);
  for(int i = 0; i < shapes.length; i++){
    int r = int(random(2));
    if(r == 0){
     shapes[i] = new Circle(width/2, height/2, 100, color(random(255), 100)); 
    }else{
      shapes[i] = new Square(width/2, height/2, 100);
    }
   }
}
void draw(){
  background(255);
  for(int i = 0; i < shapes.length; i++){
    shapes[i].jiggle();
    shapes[i].display();
  }
}
