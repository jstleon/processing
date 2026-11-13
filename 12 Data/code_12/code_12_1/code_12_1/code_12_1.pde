void setup() {
  size(400, 200);
  background(255);
  
  String fraseOriginal = "Hola Mundo";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String fraseInvertida = invertirFrase(fraseOriginal);
  
  fill(0);
  text(fraseOriginal, 20, 50);
  text(fraseInvertida, 20, 100);
}

String invertirFrase(String frase) {
  return new StringBuilder(frase).reverse().toString();
}
