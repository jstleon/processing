size(1000, 1000);
background(40);
PImage img = createImage(600, 600, ARGB);
img.loadPixels();
for (int i = 0; i < img.pixels.length; i++) {
  img.pixels[i] = color(200, 10, 10, i % img.width*0.3);
}
img.updatePixels();
image(img, 100, 100);
image(img, 300, 300);
