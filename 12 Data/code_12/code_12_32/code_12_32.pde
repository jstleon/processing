PFont miFuente;
String texto = "Este es un párrafo largo de ejemplo para mostrar cómo podemos manipular texto en Processing. Desde cargar una fuente personalizada hasta ajustar el espaciado entre líneas y asegurarnos de que el texto se ajuste dentro de un cuadro delimitador.";

void setup() {
  size(600, 400);
  miFuente = createFont("Arial", 16, true);
  textFont(miFuente);
}

void draw() {
  background(255);

  // Ajuste del espaciado con el movimiento vertical del mouse
  float espaciado = map(mouseY, 0, height, 20, 50);
  textLeading(espaciado);

  // Dibuja un cuadro delimitador
  fill(240);
  rect(50, 50, 500, 300);

  // Muestra el texto dentro del cuadro delimitador
  fill(0);
  textAlign(LEFT, TOP);  // Alineación del texto
  text(texto, 60, 70, 480, 280);
}
