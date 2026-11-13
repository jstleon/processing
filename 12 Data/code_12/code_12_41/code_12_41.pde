int[] data;

void setup() {
  size(200, 200);
  // Load text file as a String
  String[] stuff = loadStrings( "data.txt");
  // Convert string into an array of integers
  // using ',' as a delimiter
  data = int(split(stuff[0], ','));
}
void draw() {
  background(255);
  noStroke();

  for (int i = 0; i < data.length; i ++ ) {
    fill(data[i]);
    rect(i* width/data.length, height, width/data.length, -data[i]);
  }
  noLoop();
}
