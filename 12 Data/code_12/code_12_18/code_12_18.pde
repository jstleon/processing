PFont fuentePersonalizada;
String texto;
float margen = 20;
int indiceActual = 0;
int tamanioFuente = 16;

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("fuente1.ttf", tamanioFuente);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  texto = join(loadStrings("texto.txt"), " ");
}

void draw() {
  background(255);
  fill(0);
  
  String textoAMostrar = texto.substring(0, indiceActual);
  text(textoAMostrar, margen, 30, width - 2 * margen, height - 2 * margen);
  
  if (indiceActual < texto.length()) {
    indiceActual++;
  }
}
