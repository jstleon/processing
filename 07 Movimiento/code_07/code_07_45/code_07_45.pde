void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  int s = second();
  int m = minute();
  int h = hour();
  
  // nf se utiliza para definir cantidad de números
  String t = nf(h,2) + ":" + nf(m,2) + ":" + nf(s,2);
  textSize(60);
  text(t, 110, 255);
  
}
