import processing.video.*;

// Tamaño de cada celda en la cuadrícula, relación entre el tamaño de la ventana y el tamaño del video
int videoScale = 14;
// Número de columnas y filas en nuestro sistema
int cols, rows;
// Variable para el objeto de captura de video
Capture video;
// Una cadena y una fuente
String chars = "helloworld";
PFont f;

void setup() {
  size(640, 480);
  // Configurar columnas y filas
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this, cols, rows, 15);
  // Cargar la fuente
  f = createFont("miFuente.ttf", 16);  // Asume que tienes un archivo llamado "MyFontName.otf" en la carpeta "data"
}

void draw() {
  background(0);
  image(video, 0, 0);

  // Leer imagen de la cámara
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  // Usar una variable para contar los caracteres en la cadena
  int charcount = 0;
  // Iniciar bucle para filas
  for (int j = 0; j < rows; j++) {
    // Iniciar bucle para columnas
    for (int i = 0; i < cols; i++) {
      // ¿Dónde estamos, en términos de píxeles?
      int x = i * videoScale;
      int y = j * videoScale;
      color c = video.pixels[i + j * video.width];
      // En lugar de un rectángulo
      textFont(f);
      fill(c);
      text(chars.charAt(charcount), x, y);
      // Avanzar al siguiente carácter
      charcount = (charcount + 1) % chars.length();
    }
  }
}
