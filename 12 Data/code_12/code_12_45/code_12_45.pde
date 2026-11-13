void setup() {
  size(400, 400);
  background(255);

  // Obtener la lista de fuentes disponibles
  String[] fontList = PFont.list();

  // Imprimir las fuentes en la ventana de Processing
  for (int i = 0; i < fontList.length && i < 20; i++) { // Limitamos a 20 fuentes para que no llene toda la pantalla
    text(fontList[i], 10, 20 + i * 20);
  }

  // También imprimir en la consola
  println("Fuentes disponibles:");
  for (int i = 0; i < fontList.length; i++) {
    println(fontList[i]);
  }
}

void draw() {
  // No necesitamos hacer nada en el bucle draw para este ejemplo
}
