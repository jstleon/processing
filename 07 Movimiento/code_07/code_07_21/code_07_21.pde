int time1 = 2000;
int time2 = 5000;

float x = 0;

void setup(){
  size(800, 800);
  x = width/2;
  background(0);
}

void draw(){
   int currentTime = millis();
   background (0);
   
if(currentTime > time2){
     x -= 0.5;
   }else if (currentTime > time1){
     x +=1.8;
   }
   ellipse(x, height/2, 150, 150);
}
