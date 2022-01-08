int a = 100;
int b = 50;
int c = 250;
int d = 400;
int e = 450;

void setup(){
size(500, 500);
strokeWeight(35);
stroke(240);
}

void draw(){
  background(54, 80, 170);
  if(keyPressed){
    if((key == 'h') || (key == 'H')){
      line(a, c, d, c);
    }
    if((key == 'n') || (key == 'N')){
      line(a, b, d, e);
    }
  }
  line(a, b, a, e);
  line(d, b, d, e);
}
