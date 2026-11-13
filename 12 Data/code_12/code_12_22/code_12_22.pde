String cuento = "Había una vez, en un CASTILLO lejano, una PRINCESA que tenía un DRAGÓN como mascota.";
String[] palabrasClave = {"CASTILLO", "PRINCESA", "DRAGÓN"};
String[] reemplazos = {"CASTILLO", "PRINCESA", "DRAGÓN"};
String rutaArchivo = "miCuento.txt";
int palabraSeleccionada = -1;
String cuentoPersonalizado = cuento;

void setup() {
  size(800, 600);
  background(255);
  cargarCuento();
  actualizarCuentoPersonalizado();
}

void draw() {
  background(255);
  
  // Muestra el cuento personalizado
  text(cuentoPersonalizado, 50, 50, 700, 400);
  
  // Dibuja botones
  fill(100, 150, 250);
  rect(100, 500, 150, 50);
  fill(250, 100, 100);
  rect(550, 500, 150, 50);
  
  fill(255);
  text("Guardar", 125, 530);
  text("Cargar", 575, 530);
}

void mousePressed() {
  // Si se presiona el botón Guardar
  if (mouseX > 100 && mouseX < 250 && mouseY > 500 && mouseY < 550) {
    guardarCuento();
  }
  
  // Si se presiona el botón Cargar
  if (mouseX > 550 && mouseX < 700 && mouseY > 500 && mouseY < 550) {
    cargarCuento();
  }
  
  // Si se hace clic en una palabra clave
  for (int i = 0; i < palabrasClave.length; i++) {
    if (cuentoPersonalizado.contains(reemplazos[i])) {
      palabraSeleccionada = i;
    }
  }
}

void keyPressed() {
  if (palabraSeleccionada != -1) {
    if (keyCode == BACKSPACE) {
      if (reemplazos[palabraSeleccionada].length() > 0) {
        reemplazos[palabraSeleccionada] = reemplazos[palabraSeleccionada].substring(0, reemplazos[palabraSeleccionada].length() - 1);
        actualizarCuentoPersonalizado();
      }
    } else if (keyCode != ENTER) {
      reemplazos[palabraSeleccionada] += key;
      actualizarCuentoPersonalizado();
    }
  }
}

void guardarCuento() {
  saveStrings(rutaArchivo, reemplazos);
}

void cargarCuento() {
  String[] data = loadStrings(rutaArchivo);
  if (data.length == palabrasClave.length) {
    for (int i = 0; i < data.length; i++) {
      reemplazos[i] = data[i];
    }
    actualizarCuentoPersonalizado();
  }
}

void actualizarCuentoPersonalizado() {
  cuentoPersonalizado = cuento;
  for (int i = 0; i < palabrasClave.length; i++) {
    cuentoPersonalizado = cuentoPersonalizado.replace(palabrasClave[i], reemplazos[i]);
  }
}
