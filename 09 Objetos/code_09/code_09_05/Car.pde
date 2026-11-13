class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int ancho;
  int alto; 

Car (color tempC, float tempXpos, float tempYpos, float tempXspeed, int tempAncho, int tempAlto) {
  c = tempC;
  xpos = tempXpos;
  ypos = tempYpos;
  xspeed = tempXspeed;
  ancho = tempAncho;
  alto = tempAlto;
}

void display (){
  ypos = constrain(ypos, 0, height);
  
  rectMode(CENTER);
  fill(c);
  rect(xpos,ypos,ancho,alto);
  fill(200);
  
  //Ruedas
  rect(xpos-ancho/3, ypos-ancho/4, ancho/5, ancho/8);
  rect(xpos+ancho/3, ypos-ancho/4, ancho/5, ancho/8);
  rect(xpos+ancho/3, ypos+ancho/4, ancho/5, ancho/8);
  rect(xpos-ancho/3, ypos+ancho/4, ancho/5, ancho/8);
}

void move (){
  xpos = xpos + xspeed;
  if(xpos > width+ancho){
    xpos = -ancho;
    }
    aleatorio();
  }
  void aleatorio(){
    ypos += random(-ancho/50, ancho/50);
  }
}
