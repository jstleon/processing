  class Catcher {
    float r;
    color col;
    float x, y;
    
    Catcher(float tempR) {
      r = tempR;
      col = color(50, 10, 10, 150);
      x = 0;
      y = 0;
    }

    void setLocation(float tempX, float tempY) {
      x = tempX;
      y = tempY;
    }
    void display() {
      stroke(0);
      fill(col);
      ellipse(x, y, r*2, r*2);
    }
    boolean intersect(Drop d) {
    float distance = dist(x, y, d.x, d.y);
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}
