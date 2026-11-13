size(500, 500);
strokeWeight(16);
line(0, 0, width, height);
line(0, height, width, 0);

PImage slice = get(0, 0, 100, height);
set(50, 0, slice);
set(350, 0, slice);
