int[] moon;
int landingX = 0;
PImage ship;

PVector pos = new PVector( 150, 20 );
PVector speed = new PVector( 0, 0 );
PVector g = new PVector( 0, 1.622 );

 float a = 0;
 float acc = 0;

void setup() {
  size( 600, 600 );
  moon = new int[width/10+1];
  for ( int i=0; i < moon.length; i++) {
    moon[i] = int( random( 10 ));
  }
  landingX = int( random(3, moon.length-4))*10;
  ship = loadImage( "ship.png" );
}

void keyPressed() {
         if ( keyCode == LEFT ) {
a -= 0.1; }
         if ( keyCode == RIGHT ) {
           a += 0.1;
         }
         if ( keyCode == UP ) {
           acc += 0.04;
           acc = max( acc, 1/frameRate);
}
}

void draw() {
  background(255);
  stroke(200, 200, 255);
  for ( int i=0; i<height/10; i++) {
    line( 0, i*10, width, i*10);
  }
  for ( int i=0; i<width/10; i++) {
    line( i*10, 0, i*10, height );
  }
  drawMoon();
  drawLandingZone();
  drawShip();
  update();
}

void update() {
     PVector gDelta = new PVector( g.x / frameRate, g.y / frameRate);
     speed.add( gDelta );
     pos.add( speed );
     
       if ( pos.x > landingX - 40 && pos.x < landingX + 40  && pos.y >
   height-50 - ship.height/2 ) {
    pos.y = height - 50 - ship.height/2;
  } else if (pos.y > height - 20 - ship.height/2 ) {
 pos.y = height - 20 - ship.height/2;
} }


void drawShip() {
  pushMatrix();
  translate(pos.x, pos.y);
  rotate(a);
  image( ship, -ship.width/2, -ship.height/2, ship.width, ship.
    height );
  popMatrix();
}

void drawLandingZone() {
  fill(128, 200);
  rect( landingX - 30, height - 50, 60, 10);
  line( landingX - 30, height - 20 - moon[landingX/10-3], landingX
    - 20, height - 40 );
  line( landingX + 30, height - 20 - moon[landingX/10 +3], 
  landingX + 20, height - 40 );
}


void drawMoon() {
  stroke(0);
  fill(255, 200, 0, 60);
  beginShape();
  vertex(0, height);
  for ( int i=0; i < moon.length; i++) {
    vertex( i * 10, height - 20 - moon[i] );
  }
  vertex(width, height);
  endShape(CLOSE);
}

