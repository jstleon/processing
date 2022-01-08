import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup(){
  size(600, 600);
  minim = new Minim(this);
  player = minim.loadFile("mykbeat.wav");
}

void draw(){
  background(0);
  stroke(255);
  
  if ( player.isPlaying() ){
    text("Presiona una tecla para Stop.", 10, 20 );
  }
  else
  {
    text("Presiona una tecla para Play.", 10, 20 );
  }
}

void keyPressed(){
  if ( player.isPlaying() )
  {
    player.pause();
  }
  else
  {
    player.play();
  }
}
