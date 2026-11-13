class Stripe{
  float x;
  float speed;
  float w;
  boolean mouse;
  
  Stripe(){
    x = random(width);
    speed = random(1);
    w = random(10, 30);
    mouse = false;
  }
  
  void display(){
    if(mouse){
      fill(255, 0, 0);
    }else{
      fill(255, 50);
    }
    noStroke();
    rect(x, 0, w, height);
  }
  
  void move(){
    x += speed;
    if(x > width + 20) x = 20;
  }
  
  void rollover(int mx, int my){
    if(mx > x && mx < x + w){
      mouse = true;
    }else{
      mouse = false;
    }
  }
}
