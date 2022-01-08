PGraphics big;

void setup(){
  big = createGraphics (3000, 3000, JAVA2D);
  big.beginDraw();
  big.background(188, 50, 80);
  big.strokeWeight(180);
  big.line(200, 2800, 2800, 200);
  big.line(200, 200, 2800, 2800);
  big.endDraw();
  big.save("big.tif");
}
