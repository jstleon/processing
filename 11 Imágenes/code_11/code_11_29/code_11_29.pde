size(1000, 1000);

background(0);
stroke(200);
strokeWeight(24);

line(0, 0, width, height);
line(0, height, width, 0);

PImage cross = get(0, 0, 200, height);

set(180, 0, cross);
set(500, 0, cross);
