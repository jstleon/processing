ArrayList<Ball>balls;
int ballWidth = 48;

void setup(){
  size(1000, 1000);
  noStroke();
  balls = new ArrayList<Ball>();
  
}

void draw(){
   background(255);
   ballWidth =(int)random(50, 100);
   for(int i = balls.size()-1; i >=0; i--){
     Ball ball = balls.get(i);
     ball.move();
     ball.display();
     if(ball.finished()){
       balls.remove(i);
     }
   }
   println(balls.size());
}

void mousePressed(){
  balls.add(new Ball(mouseX, mouseY, ballWidth));
  
}
