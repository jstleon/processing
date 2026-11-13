size(1000, 1000);
background(40);
PImage img = createImage(800, 800, RGB);
img.loadPixels();
for(int i = 0; i < img.pixels.length; i++){
  img.pixels[i] = color(200, 10, 10);
}
img.updatePixels();
image(img, 100, 100);
