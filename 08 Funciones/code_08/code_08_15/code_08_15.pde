void setup(){
  size(1000, 1000);
  translate(width/2, height/2);
  background(0);
  fill(255);
  float radOut = height/2.3;
  float radIn = radOut *.5;
  star(8, radIn, radOut);
}
