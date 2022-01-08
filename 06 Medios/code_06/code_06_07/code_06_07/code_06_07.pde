float offset = 100;

size(800, 800);

strokeWeight(75);
background(195, 0, 0);


line(offset, offset, width-offset, height-offset);

save("image/code_06_07.tga");

line(width-offset, offset, offset, height-offset);
