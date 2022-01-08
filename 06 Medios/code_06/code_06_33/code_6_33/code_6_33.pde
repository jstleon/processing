PShape robot;

void setup(){
  size(500, 500);
  robot = loadShape("robot_01.svg");
  shapeMode(CENTER);
}

void draw(){
  background(50);
  shape(robot, width/2, height/2);
}
