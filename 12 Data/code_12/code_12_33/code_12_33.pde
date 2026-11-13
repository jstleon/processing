PFont miFuente;
String textoMovimiento = "Texto en Movimiento e Interactivo";
float x;
color colorTexto = color(0);
float tamanoTexto = 24;

void setup() {
  size(600, 400);
  miFuente = createFont("Arial", tamanoTexto, true);
  textFont(miFuente);
  x = -textWidth(textoMovimiento);
}

void draw() {
  background(255);
  
  fill(colorTexto);
  text(textoMovimiento, x, height/2);
  
  x += 3;
  
  if (x > width) {
    x = -textWidth(textoMovimiento);
  }
  
  if (mouseX > x && mouseX < x + textWidth(textoMovimiento) && mouseY > height/2 - textAscent() && mouseY < height/2 + textDescent()) {
    colorTexto = color(255, 0, 0);
    if (mousePressed) {
      tamanoTexto = 36;
      textFont(miFuente, tamanoTexto);
    }
  } else {
    colorTexto = color(0);
    tamanoTexto = 24;
    textFont(miFuente, tamanoTexto);
  }
}
