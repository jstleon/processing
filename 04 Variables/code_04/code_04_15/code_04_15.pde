
void setup(){
size(500, 500);
}

void draw(){
  int i = 10;
  do{
  line(i, 10, i, 490);  
  i = i + 5;
  }while(i <= 490);
}
