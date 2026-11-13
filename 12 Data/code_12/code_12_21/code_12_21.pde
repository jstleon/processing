String[] notas = {};
String notaActual = "";
String rutaArchivo = "misNotas.txt";

void setup() {
  size(600, 400);
  background(255);
}

void draw() {
  background(255);
  
  // Dibuja el cuadro de texto
  fill(240);
  rect(50, 50, 500, 250);
  
  // Muestra la nota actual
  fill(0);
  text(notaActual, 60, 60, 480, 240);
  
  // Dibuja botones
  fill(100, 150, 250);
  rect(100, 320, 150, 50);
  fill(250, 100, 100);
  rect(350, 320, 150, 50);
  
  fill(255);
  text("Guardar", 125, 350);
  text("Cargar", 375, 350);
}

void mousePressed() {
  // Si se presiona el botón Guardar
  if (mouseX > 100 && mouseX < 250 && mouseY > 320 && mouseY < 370) {
    guardarNota();
  }
  
  // Si se presiona el botón Cargar
  if (mouseX > 350 && mouseX < 500 && mouseY > 320 && mouseY < 370) {
    cargarNota();
  }
}

void keyPressed() {
  // Captura la entrada del teclado
  if (keyCode == BACKSPACE) {
    if (notaActual.length() > 0) {
      notaActual = notaActual.substring(0, notaActual.length() - 1);
    }
  } else if (keyCode != ENTER) {
    notaActual += key;
  }
}

void guardarNota() {
  String[] data = {notaActual};
  saveStrings(rutaArchivo, data);
}

void cargarNota() {
  notas = loadStrings(rutaArchivo);
  if (notas.length > 0) {
    notaActual = notas[0];
  }
}
