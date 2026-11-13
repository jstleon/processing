float [][] kernel = { {-1, 0, 1},
                      {-2, 0, 2},
                      {-1, 0, 1} };
                      
size(1500, 1500);
PImage img = loadImage("apollo.jpg");
img.loadPixels();
PImage edgeImg = createImage(img.width, img.height, RGB);
for(int y = 1; y < img.height-1; y++){
  for(int x = 1; x < img.width-1; x++){
    float sum = 0;
    for(int ky = -1; ky <= 1; ky++){
      for(int kx = -1; kx <= 1; kx++){
        int pos = (y + ky) * width + (x + kx);
        float val = red(img.pixels[pos]);
        sum += kernel[ky + 1][kx + 1] * val;
      }
    }
    edgeImg.pixels[y * img.width + x] = color(sum);
  }
}
edgeImg.updatePixels();
image(edgeImg, 0, 0);
