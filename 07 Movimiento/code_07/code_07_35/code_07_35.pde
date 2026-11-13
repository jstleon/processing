int x = 0;
int y = 0;
int speed = 3;
int state = 0;

int tam = 120;

void setup(){
  size(500, 500);
}

void draw(){
  background(170, 40, 80);
  noStroke();
  
  
  fill(200, 198, 195);
  rect(x, y, tam, tam);
  
  if(state == 0){
    x += speed;
    if(x > width - tam){
    state = 1;
    }
  }else if(state == 1){
    y += speed;
    if(y > height - tam){
    state = 2;
    }
  }else if(state == 2){
    x -= speed;
    if(x < 0 ){
    state = 3;
    }
  }else if(state == 3){
    y -= speed;
    if(y < 0){
      y = 0;
      state = 0;
    }
  }
  println(state);
}
