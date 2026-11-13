PFont myFont;

void setup() {
  size(400, 400);
  background(255);

  // Listar las fuentes disponibles en la consola
  String[] fontList = PFont.list();
  println("Fuentes disponibles:");
  for (int i = 0; i < fontList.length; i++) {
    println(fontList[i]);
  }

  // Supongamos que después de ver la lista, decidimos usar "Arial" (asegúrate de que "Arial" esté en la lista impresa en la consola)
  myFont = createFont("NotoSansKannada-Medium", 32);  // Nombre de la fuente y tamaño
  textFont(myFont);
  fill(0);
  text("Hola, mundo!", 50, 50);
}

void draw() {
  // No necesitamos hacer nada en el bucle draw para este ejemplo
}
