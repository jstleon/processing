void setup() {
  size(400, 400);
  background(255);
  
  String frase = "Processing es genial para visualización";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String[] palabrasOrdenadas = ordenarPalabras(frase);
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Palabras ordenadas:", 20, 100);
  
  for (int i = 0; i < palabrasOrdenadas.length; i++) {
    text(palabrasOrdenadas[i], 20, 150 + i * 30);
  }
}

String[] ordenarPalabras(String frase) {
  String[] palabras = split(frase, ' ');
  sort(palabras);
  return palabras;
}
