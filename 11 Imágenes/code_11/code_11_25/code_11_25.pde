PImage img;
color[]imageColors;

void setup(){
  size(1000, 1000);
  frameRate(0.5);
  noFill();
  img = loadImage("a.jpg");
  imageColors = new color[img.width*img.height];
    for (int y = 0; y < img.height; y++) {
      for (int x = 0; x < img.width; x++) {
        imageColors[y*img.height + x] = img.get(x, y);
    }
   }
  imageColors = sortColors(imageColors);
}

void draw(){
 background(255);
 
 for(int x = 0; x < width; x +=5){
   int r = int(random(imageColors.length));
   float thick = ((100 - r) / 4.0) + 1.0;
   float diam = random(10, 100); 
   //background(imageColors[r]); 
   //stroke(imageColors[r]);
   //strokeWeight(thick * 10);
   noStroke();
   fill(imageColors[r]);
   ellipse(random(width), random(height), diam, diam);
   //line(x, height, x, height - r + thick);
   //line(x, 0, x, height - r - thick);
 }
}

color[] sortColors(color[] colors){
  color[]sorted = new color[colors.length];
  int num = 0;
  for(int i = 0; i < 255; i++){
    for(int j = 0; j < colors.length; j++){
      if(int(brightness(colors[j])) == i){
      sorted[num] = colors[j];
      num++;
    }
  }
}
return sorted;
}
