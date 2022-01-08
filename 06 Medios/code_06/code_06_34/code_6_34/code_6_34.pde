PShape robot;
PShape robot2;
void setup(){
  size(500, 500);
  robot = loadShape("robot_03.svg");
  robot2 = loadShape("robot_04.svg");
  shapeMode(CENTER);
}

void draw(){
  background(50);
  if(mousePressed){
  shape(robot2, width/2, height/2);
  save("image/code_64_b.jpg");
  }else{  
  shape(robot, width/2, height/2);
  }
}
