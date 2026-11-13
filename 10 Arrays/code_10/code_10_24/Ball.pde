class Ball {
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 255;


  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.2;

  }

  void move() {
    speed = speed + gravity;
    y = y + speed;
    if (y > height-w/2) {
      speed *= -0.95;
      y = height-w/2;
    }
  }

  boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }

  void display() {  
    fill(0, +life);
    noStroke();
    ellipse(x, y, w, w);
  }
}
