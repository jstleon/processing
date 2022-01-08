int diametro = 220;
int circleY = 200;
int circleX = 360;
int offset = 160;

size(720, 400);

ellipse(circleX - offset, circleY, diametro, diametro);
ellipse(circleX, circleY, diametro, diametro);
ellipse(circleX + offset, circleY, diametro, diametro);
