void setup() {
  size(400, 300);
  background(255);
  
  String palabra = "radar";  // En una aplicación real, esta palabra podría ser introducida por el usuario
  boolean esPalindromo = verificarPalindromo(palabra);
  
  fill(0);
  text("Palabra: " + palabra, 20, 50);
  if (esPalindromo) {
    text(palabra + " es un palíndromo.", 20, 100);
  } else {
    text(palabra + " no es un palíndromo.", 20, 100);
  }
}

boolean verificarPalindromo(String palabra) {
  int longitud = palabra.length();
  for (int i = 0; i < longitud / 2; i++) {
    if (palabra.charAt(i) != palabra.charAt(longitud - i - 1)) {
      return false;
    }
  }
  return true;
}
